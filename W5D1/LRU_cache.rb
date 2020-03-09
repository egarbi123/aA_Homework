class LRUCache
    def initialize(limit)
        @cache_array = []
        @max_length = limit
    end

    def count
      # returns number of elements currently in cache
      @cache_array.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if !@cache_array.include? && @cache_array.length < @max_length
        @cache_array << el
      elsif !@cache_array.include?
        @cache_array.shift
        @cache_array << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache_array
    end

    private
    # helper methods go here!

  end