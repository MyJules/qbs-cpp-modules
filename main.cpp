import std;
import hello;

int main()
{
    std::vector names{std::string_view{"Qbs"}};
    std::ranges::for_each(names, [](std::string_view name) {
        Hello::printHello(name);
    });
    return 0;
}
