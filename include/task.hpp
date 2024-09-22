#ifndef __task_hpp
#define __task_hpp

#include <coroutine>
#include <utility>
#include <string>
#include <fmt/core.h>
#include <concepts>
#include <type_traits>

namespace co_api {

template <class T>
struct task_promise;

template <class T>
struct task {
  using promise_type = task_promise<T>;
  friend promise_type;

  struct awaitable_base {
    awaitable_base(std::coroutine_handle<promise_type> h) : coro(h) {}

    constexpr bool await_ready() { return false; }

    std::coroutine_handle<> await_suspend(std::coroutine_handle<> awaitee) {
      coro.promise().continuation = awaitee;
      return coro;
    }
    std::coroutine_handle<promise_type> coro;
  };

  auto operator co_await() && {
    struct awaitable : public awaitable_base {
      using awaitable_base::coro;
      auto await_resume() {
        if constexpr (std::is_void_v<T>) {
          return;
        } else {
          return coro.promise().result;
        }
      }
    };
    return awaitable{self};
  }

  // move construction
  task(task&& other) : self(std::exchange(other.self, {})) {}

  ~task() {
    if (self) {
      self.destroy();
    }
  }

  // void emit() {
  //   if (self) {
  //     self.resume();
  //   }
  // }

 private:
  explicit task(std::coroutine_handle<promise_type> h) : self(h) {}
  std::coroutine_handle<promise_type> self;
  // T result;
};

struct task_promise_base {
  // 懒启动
  constexpr std::suspend_always initial_suspend() noexcept { return {}; }

  // co_return时要恢复在awaiting的协程
  struct final_awaiter {
    constexpr bool await_ready() noexcept { return false; }

    template <class P>
      requires std::is_base_of_v<task_promise_base, P>
    std::coroutine_handle<> await_suspend(std::coroutine_handle<P> h) noexcept {
      if (h.promise().continuation) {
        return h.promise().continuation;
      } else {
        return std::noop_coroutine();
      }
    }
    void await_resume() noexcept {}
  };
  constexpr final_awaiter final_suspend() noexcept { return {}; }

  void unhandled_exception() {
    // todo: exception
  };

  // 记录本协程结束后将要唤醒的协程
  std::coroutine_handle<> continuation;
};

template <class T>
struct task_promise final : public task_promise_base {
  void return_value(T&& value) { result = std::forward<T>(value); }

  task<T> get_return_object() noexcept {
    return task<T>{std::coroutine_handle<task_promise>::from_promise(*this)};
  }

  T result;
};

template <>
struct task_promise<void> : public task_promise_base {
  void return_void() noexcept {}

  task<void> get_return_object() noexcept {
    return task<void>{
        std::coroutine_handle<task_promise<void>>::from_promise(*this)};
  }
};

}  // namespace co_api

#endif  // __task_hpp