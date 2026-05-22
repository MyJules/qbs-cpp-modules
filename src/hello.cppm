export module hello;

import std;

export namespace Hello {

std::string greeting(std::string_view name)
{
    return std::format("Hello, {} from C++20 modules!", name);
}

void printHello(std::string_view name)
{
    std::println("{}", greeting(name));
}

} // namespace Hello
