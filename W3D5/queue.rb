class Queue

    def initialize
        @stack = []
    end

    def enqueue(el)
        @stack << el
    end

    def dequeue
        @stack.shift
    end

    def peek
        @stack[0]
    end

end