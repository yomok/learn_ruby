class Book
  
    attr_accessor :title
    
    def title=(title)
        little_words = ['a', 'an', 'and', 'the', 'of', 'in']
        arr = title.split(' ')
        first = [arr[0].capitalize!]
        arr[1..arr.length].each do |x|
            if little_words.include? x
                first << x
            else
                first << x.capitalize
            end
        end
            @title = first.join(" ")
    end
end
