function generatePassword(passLength)
    local characters = {
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
        "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+"
    } 
    local generatedPassword
    for i = 1, passLength do
        if i == passLength then
            return generatedPassword
        end
        if i == 1 then
            generatedPassword = characters[math.random(1, 76)]
        end
        generatedPassword = generatedPassword .. characters[math.random(1, 76)]
    end

end

while true do
    print("How long would you like your password?\n")
    local length = io.read("l")
    if length == "exit" or length == "stop" then
        os.exit()
    end
    print("Generating password....\n")
    local password = generatePassword(tonumber(length))
    print("Your password is " .. password)
end