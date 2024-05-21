#ifndef __task_hpp
#define __task_hpp

#include <coroutine>
#include <utility>

namespace co_api {
template <class T>
struct task {
  struct promise_type {};
};

template <class = void>
struct task;

template <>
struct task<void> {
  // task<T>作为协程返回值需要实现promise_type
  struct promise_type {
    // 懒启动
    constexpr std::suspend_always initial_suspend() noexcept { return {}; }

    // co_return时要恢复在awaiting的协程
    constexpr auto final_suspend() noexcept {
      struct final_awaiter {
        constexpr bool await_ready() noexcept { return false; }
        void await_suspend(std::coroutine_handle<promise_type> h) noexcept {
          h.promise().awaitee.resume();
        }
        void await_resume() noexcept {}
      };
      return final_awaiter{};
    }

    void unhandled_exception() {
      // todo: exception
    };

    // 构造task以返回
    task get_return_object() {
      return task{std::coroutine_handle<promise_type>::from_promise(*this)};
    };

    void return_void() noexcept {};

    // 记录本协程结束后将要唤醒的协程
    std::coroutine_handle<> awaitee;
  };

  // 为了能在另一个task<T>里被co_await需要为其实现awaiter
  struct awaiter_type {
    friend task;
    // 当co_await inner_task()时首先确认是否需要等待
    constexpr bool await_ready() noexcept { return false; }

    // 需要等待的时候进入await_suspend，将outer_task()的handle传入
    void await_suspend(std::coroutine_handle<> awaitee) noexcept {
      coro.promise().awaitee = awaitee;
      coro.resume();
    }
    // T await_resume() { return _task.get_result(); }

   private:
    explicit awaiter_type(std::coroutine_handle<promise_type> h) noexcept
        : coro(h) {}
    std::coroutine_handle<promise_type> coro;
  };

  awaiter_type operator co_await() { return awaiter_type{self}; }

  // move construction
  task(task&& other) : self(std::exchange(other.self, {})){};

  ~task() {
    if (self) {
      self.destroy();
    }
  }

  // T get_result() { return _h.promise().get_result(); }

 private:
  explicit task(std::coroutine_handle<promise_type> h) : self(h) {}
  std::coroutine_handle<promise_type> self;
};
}  // namespace co_api

#endif  // __task_hpp