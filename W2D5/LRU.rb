class LRUCache
   def initialize(size)
     @max_size = size
     @cache = []
   end

   def count
     # returns number of elements currently in cache
     @cache.count
   end

   def add(el)
     # adds element to cache according to LRU principle
     # if there, take out and put to back, if too big, take one off, else just add
     if @cache.include?(el)
       # and if it is already in, we know it isn't too big
       @cache.delete(el)
       @cache << (el)
     elsif @cache.count == max_size
       @cache.shift
       @cache << (el)
     else
       @cache << (el)
     end
   end

   def show
     # shows the items in the cache, with the LRU item first
     p @cache
     #return nil at end so that the system doesn't try to return anything
     # from previous line
     nil
   end

   private
   # helper methods go here!
   

 end
