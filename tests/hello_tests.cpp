#include <gtest/gtest.h>

import hello;

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

TEST(HelloTests, GreetingIncludesName)
{
    EXPECT_EQ(Hello::greeting("Qbs"), "Hello, Qbs from C++20 modules!");
}