# Define class
class Building

  attr_accessor :num_windows, :num_walls, :num_stories, :build_mat, :colors, :has_ac

  def initialize(window_count, wall_count, story_count, materials, paint_colors, ac)
    @num_windows = window_count
    @num_walls = wall_count
    @num_stories = story_count
    @build_mat = materials
    @colors = paint_colors
    @has_ac = ac
  end
end

# Build a Firehouse
firehouse = Building.new(10,4,3,["wood", "metal"],["red"], true)

#Build a Hospital
hospital = Building.new(30,10,4,["concrete", "metal"], ["white", "red"], true)
