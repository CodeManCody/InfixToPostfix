Cody Morgan

codymorgan89@gmail.com



prog3_1:

    File(s) included: prog3_1.cpp

    Program compilation: g++ prog3_1.cpp –o prog3_1 –I lua-5.3.4/src –L lua-5.3.4/src –l lua –l m –l dl

    Functionality:
        This simple program creates a Lua environment in C++ by executing a .lua file passed into the
        command line.

prog3_2:

    File(s) included: prog3_2.lua

    Functionality: 
        This .lua program contains a function, InfixToPostfix(inputString), which converts inputString
        from infix to postfix notation, and returns the resulting postfix string to the LUA stack.

prog3_3:

    File(s) included: prog3_3.cpp

    Program compilation: g++ prog3_3.cpp –o prog3_3 –I lua-5.3.4/src –L lua-5.3.4/src –l lua –l m –l dl

    Program execution: ./prog3_3 prog3_2.lua

    Functionality:
        This program creates a Lua environment in C++ and executes the .lua file passed in from the 
        command line. It then takes inputString from STDIN, calls the Lua function InfixToPostfix(inputString),
        makes the conversion from infix to postfix in LUA via the .lua file, retrieves the returned postfix
        string from the LUA stack, and then finally outputs the result to STDOUT.

    

        
