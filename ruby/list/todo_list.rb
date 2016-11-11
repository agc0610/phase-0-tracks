class TodoList

  def initialize(list)
    @todolist = list
  end

  def get_items
    @todolist
  end

  def add_item(item)
    @todolist << item
  end

  def delete_item(item)
    @todolist.delete(item)
  end

  def get_item(num)
    @todolist[num]
  end

end


