def translate(str)
    array = str.split(" ")
    array.each do |word|
        temp = ""
        until ["a", "e", "i", "o", "u"].include?(word[0])
            if (0 < word.length - 1 && word[0] == "q" && word[1] == 'u')
                temp << word[0,2]
                word[0,2]=''
            else
                temp << word[0]
                word[0] = ''
            end
        end
        word << temp + "ay"
    end
    array.join(" ")
end
