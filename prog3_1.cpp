
#include <iostream>
#include <lua.hpp>

// g++ -I/usr/include/lua5.2 -o prog3_1 prog3_1.cpp -llua5.2 -lm
// ./prog3_1 <file.lua>

using namespace std;

int main(int argc, char* argv[])
{
    
    lua_State* L = luaL_newstate();
    luaL_openlibs(L);
    luaL_dofile(L,argv[1]);

    lua_close(L);
    return 0;
}
