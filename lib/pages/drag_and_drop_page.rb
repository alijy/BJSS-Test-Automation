class DragAndDropPage
  include Capybara::DSL

  LEFT_COLUMN_ID = "#column-a"
  RIGHT_COLUMN_ID = "#column-b"

  def dragLeftToRight
    draggable = find(LEFT_COLUMN_ID)
    droppable = find(RIGHT_COLUMN_ID)
    draggable.drag_to(droppable)
  end

  def getLeftColumnHeader
    find(LEFT_COLUMN_ID).text
  end

  def getRightColumnHeader
    find(RIGHT_COLUMN_ID).text
  end

end
