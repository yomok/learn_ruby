def translate(str)
    vowels = ['a','e','i','o','u']
    words = str.split(" ")
    translated = []
    words.each do |word|
        if(vowels.include? word[0])
            translated << word + "ay"
        elsif word[0,2] == "qu"
            translated << word[2..word.length-1] + word[0,2] + "ay"
        elsif (word[1] == "q")
            translated << word[3..word.length-1] + word[0,3] + "ay"
        else
            pre = ""
            while(!vowels.include? word[0])
                pre = pre + word[0]
                word = word[1..word.length-1]
            end
            word = word + pre + "ay"
            translated << word
        end
    end 
    return translated.join(" ")
end
