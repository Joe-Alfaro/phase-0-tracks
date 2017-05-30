class TodoList

  def initialize(new_list)
    @list = new_list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete_if{|i| i == item}
  end

  def get_item(x)
    @list[x]
  end

end