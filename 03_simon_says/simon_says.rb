#write your code here
def echo(x)
    x
end

def shout(x)
    x.upcase
end

def repeat(x,y=2)
    ([x] * y).join(' ')
end

def start_of_word(word, num)
    word[0, num]
end

def first_word(words)
    words.split[0]
    
end

def titleize(str)
    words = str.split
    words[0].capitalize!
    words.map {|word| word=="and" || word=="over" || word=="the" ? word : word.capitalize}.join(" ")
end