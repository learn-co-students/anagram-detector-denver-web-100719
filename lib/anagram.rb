require 'pry'
class Anagram
 attr_reader :string
    @@all = []

    def initialize(string)
        @string = string
        @@all << self
    end

    def self.all
        @@all
    end

    def match(arg_string)
        arg_string.select{|word| word.split('').sort ==string.split('').sort}
        # binding.pry
    end
    
    
    Anagram.new('diaper')
    all[0].match(%w(hello world zombies pants dipper))

end