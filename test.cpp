#include <fmt/core.h>
#include <fmt/ranges.h>
#include <iostream>
#include <thread>
#include <chrono>
#include <string>
#include <coroutine>
#include "include/task.hpp"

using namespace co_api;
using namespace std::chrono_literals;
using std::string_view;
using std::this_thread::sleep_for;
void debug(string_view msg) { fmt::println("{}", msg); }

struct emiter {
  struct promise_type {
    emiter get_return_object() {
      return emiter{std::coroutine_handle<promise_type>::from_promise(*this)};
    }
    constexpr std::suspend_always initial_suspend() noexcept { return {}; }
    constexpr std::suspend_always final_suspend() noexcept { return {}; }

    void unhandled_exception() {};
    void return_void() noexcept {};
  };

  std::coroutine_handle<> self;
  void emit() {
    if (self) self.resume();
  }

  emiter(std::coroutine_handle<promise_type> h) : self(h) {}
  ~emiter() {
    if (self) self.destroy();
  }
};

task<void> wait_1_sec() {
  debug("\tentering wait_1_sec");
  sleep_for(1s);
  debug("\tleaving wait_1_sec");
  co_return;
}

task<void> wait_2_sec() {
  debug("\ttentering wait_2_sec");
  sleep_for(2s);
  debug("\ttleaving wait_2_sec");
  co_return;
}

task<int> get_two() { co_return 2; }

task<int> get_three() { co_return 3; }

emiter coro_main() {
  debug("entering coro_main");
  debug("before co_await wait_1_sec");
  co_await wait_1_sec();
  debug("inbetween");
  co_await wait_2_sec();
  debug("after co_await wait_2_sec");
  // auto two = co_await get_two();
  // auto three = co_await get_three();
  // fmt::println("{} {}", two, three);
  co_return;
}

int main() {
  auto t = coro_main();
  t.emit();
}