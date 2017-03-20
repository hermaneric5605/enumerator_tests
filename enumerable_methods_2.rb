#lib/enumerable_methods.rb


module Enumerable
	def my_each
		for x in self
			yield(x)
		end
	end

	def my_each_with_index
		for i in  (0..size)
		end
	end


	def my_select
	    result = []
	    self.my_each { |x| result << x if yield(x) }
	    result
  	end

  	def my_all?
	    self.my_each { |x| return false unless yield(x) }
	    true
  	end

  	def my_any?
	    self.my_each { |x| return true if yield(x) }
	    false
  	end

  	def my_none?
  		self.my_all { |x| !yield(x) }
  	end

  	def my_count
  		self.my_select { |x| yield(x) }.size
  	end
  		def my_map(p)
  			result = []
  			self.my_each {|x| result << p.call(x) }
  		end

  	end