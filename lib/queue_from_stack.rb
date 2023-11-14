require_relative './stack'

# your code here
class MyQueue
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        if @s1.empty?
            until @s2.empty? do
                @s1.push(@s2.pop) 
            end
            @s1.push(value)
            until @s1.empty? do
                @s2.push(@s1.pop)
            end
        else
            until @s1.empty? do
                @s2.push(@s1.pop)
            end
            @s2.push(value)
            until @s2.empty? do
                @s1.push(@s2.pop)
            end
        end

    end

    def remove
        @s1.empty? ? @s2.pop : @s1.pop
    end

    def peek
        @s1.empty? ? @s2.peek : @s1.peek
    end
end
