#ifndef __concepts_hpp
#define __concepts_hpp
#include <type_traits>
#include <concepts>
template <class T>
concept Corotine = requires { T::promise_type; };

template <class T>
concept Awaitable = requires {
  T::await_suspend();
  T::await_resume();
  T::await_ready();
};

#endif  // __concepts_hpp