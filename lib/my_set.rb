require 'pry'

class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each{|val| @hash[val] = true}
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def self.[](*enumerable)
        newSet = self.new(enumerable)
    end

    def clear
        @hash = {}
        self
    end

    def each(&b)
        @hash.keys.each{|k| b.call(k)}
        self
    end
    
    def inspect
        "#<MySet: {#{@hash.keys.join(', ')}}>"
    end
end

# binding.pry