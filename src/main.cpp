import std;
import args;

int main(int argc, const char* argv[])
{
    const auto args_span = args::to_span(argc, argv);
    std::println("{}", args_span);

    return 0;
}
