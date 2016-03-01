#include <dummy.h>
#include <gsl.h>

#define TESTINATOR_MAIN
#include <testinator.h>

DEF_TEST(Name, Suite)
{
  return true;
}

DEF_TIMED_TEST(Name2, Suite)
{
}

DEF_PROPERTY(Name3, Suite, int)
{
  return true;
}

DEF_COMPLEXITY_PROPERTY(Name4, Suite, ORDER_N, int)
{
}
