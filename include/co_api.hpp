#include <string>
#include <coroutine>
#include <concepts>

namespace co_api {
class App {
 public:
  template <typename F>
  void get(std::string_view path, F handler){

  };
};
}  // namespace co_api