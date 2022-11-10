#include <string>

#include <gmock/gmock.h>

TEST(Something, SomethingPass)
{
    std::string value{"foo"};
    EXPECT_TRUE(true);
    EXPECT_EQ(value, "foo");
}