#include <gmock/gmock.h>
#include <string>

TEST(Something, SomethingPass)
{
    std::string str{"foo"};
    EXPECT_TRUE(true);
    EXPECT_EQ(str, "foo");
}