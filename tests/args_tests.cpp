#include <gtest/gtest.h>

import args;

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

TEST(ArgsTests, ToSpanReturnsCorrectSize)
{
    const char* argv[] = {"program", "arg1", "arg2"};
    const auto args_span = args::to_span(3, argv);
    EXPECT_EQ(args_span.size(), 3);
}