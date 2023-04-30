# your code here
class Stack

    def initialize(limit = nil)
        @limit = limit
        @stack = []
    end

    def push(value)
        raise 'Stack Overflow' if full?
        @stack.push(value)
    end

    def pop
        
       @stack.pop 
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def full?
        @limit && @stack.size == @limit 
    end

    def empty? 
        @stack.length == 0
    end

    def search(value)
       num = @stack.index(value)
       if num == nil
            -1
        else
            @stack.length-1 - num
        end
    end

end