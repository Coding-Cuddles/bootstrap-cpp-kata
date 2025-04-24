#include <gmock/gmock.h>

TEST(SomethingTest, BasicAssertions)
{
    EXPECT_TRUE(true);
    EXPECT_STRNE("hello", "world");
    EXPECT_EQ(7 * 6, 42);
}
