#include <iostream>

using namespace std;

extern int dummy();

int main(int, char* [])
{
  cout << dummy() << endl;
  return 0;
}
