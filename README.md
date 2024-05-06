# CO_API

Try to learn some c++20 coroutine by build a webserver/apiserver like [fastapi](https://fastapi.tiangolo.com/). Idealy it should be like:

```cpp
#include "co_api"

// An app instance. Maybe it should be a singleton. Or maybe it should be something that can be composed with other things, like a router or a midware.
auto app = co_api::App(/* some configurations */);

// Adding routes. I believe there should be some templates because I want to make the second argument be able to "catch" args in the path whether it's a lambda, a function, a coroutine or any ohter thing that can be called. The app should magically use different backends to run the callable when the request matches the path.
app.GET("/some/route/{arg:int}",[](/* no idea what should be here now */){
    // Make your responses balabala
    co_yield something;
});

// Server on localhost. Maybe the application should be departed with the server, like `fastapi` and `unicorn`. No idea now.
app.serve_on("localhost",8000);
```

Things to do as far as I can image now:
- [ ] Unified interface to register routes with whether coroutines or regular callales.
- [ ] Support for different underlying async mechanisms —— a hand writed event loop with select/epoll, cpp20 coroutine, thread pool, etc.
- [ ] Midwares to catch and modify request/response app-wise.
- [ ] An ORM maybe.

It's hard. I'm lazy and ill and dumb as every young man is. It may never be acomplished.