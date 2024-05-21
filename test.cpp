#include <fmt/core.h>
#include <fmt/ranges.h>
#include <iostream>
#include <thread>
#include <chrono>

#include "task.hpp"

using namespace co_api;
using namespace std::chrono_literals;

task<> get_two() {
  fmt::println("\tinto get_two");
  std::this_thread::sleep_for(1s);
  fmt::println("\tsleep over");
  co_return;
}

task<> get_three() {
  fmt::println("\t\tinto get_three");
  std::this_thread::sleep_for(1500ms);
  fmt::println("\t\tsleep over");
  co_return;
}

int main() {
  // fmt::println("{}", 1);
}