class TodoList

	def initialize(arr)
		@list = arr
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end
end