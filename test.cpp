#include <vector>
#include <fmt/core.h>
#include <fmt/ranges.h>
#include <iostream>
#include <coroutine>
#include <iterator>
#include <string>
#include <concepts>
#include <type_traits>

class App {
  class Router {};

  Router router_;

 public:
  template <class F, class RT = std::invoke_result_t<F>>
  void get(std::string_view path, F cb) {
    // 解析path
    // 注册route
  }
};

struct task {
  struct promise_type {
    void return_void() {}
    std::suspend_always initial_suspend() noexcept { return {}; }
    std::suspend_always final_suspend() noexcept { return {}; }
    void unhandled_exception() {}
    task get_return_object() { return {}; }
  };
};

int main() {
  App app{};
  app.get("/user/id", []() -> task { co_return; });
}