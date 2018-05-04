function Precedence(token)
    if (token == "*" or token == "/" or token == "%") then
        return 2
    elseif (token == "+" or token == "-") then
        return 1
    else
        return -1
    end
end

function InfixToPostfix(inputString)
    
    infixTokens = {}
    postfixTokens = {}
    stack = {}
    table.insert(stack, "emptyStack")

    for token in inputString:gmatch("%S+") do 
        table.insert(infixTokens, token)
    end

    for i=1,#infixTokens do
    
        if (infixTokens[i] ~= "*" and infixTokens[i] ~= "/" and infixTokens[i] ~= "%" 
           and infixTokens[i] ~= "+" and infixTokens[i] ~= "-") then
            -- token is operand
            table.insert(postfixTokens, infixTokens[i])

        else    -- token is operator
            while stack[#stack] ~= "emptyStack" and Precedence(infixTokens[i]) <= Precedence(stack[#stack]) do
                table.insert(postfixTokens, table.remove(stack))
            end

            table.insert(stack, infixTokens[i])
        end
    end

    while (stack[#stack] ~= "emptyStack") do
       table.insert(postfixTokens, table.remove(stack))
    end

    postfixString = table.concat(postfixTokens, " ")
    return postfixString
end


