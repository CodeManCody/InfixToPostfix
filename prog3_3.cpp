
#include <string>
#include <iostream>
#include <lua.hpp>

// g++ -I/usr/include/lua5.2 -o prog3_3 prog3_3.cpp -llua5.2 -lm
// ./prog3_3 <file.lua>

using namespace std;

int main(int argc, char* argv[])
{
    
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);
    luaL_dofile(L,argv[1]);

    string input;
    getline(cin, input);

    string test = "return InfixToPostfix("+input+")";
    luaL_dostring(L,test.c_str());
    cout << luaL_checkstring(L,1) << endl;

    lua_close(L);
    return 0;
}
