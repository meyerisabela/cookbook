class Task # MODEL
  attr_reader :title, :completed

  # STATE / DATA
  def initialize(title)
    @title = title
    @completed = false
  end

  # BEHAVIOR / COMPORTAMENTO
  def mark_as_completed
    @completed = true
  end
end
