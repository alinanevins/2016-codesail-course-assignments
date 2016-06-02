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

  def self.knockknock
    puts "Who's there?"

  def ring_bell
    puts "ding dong!"

end

# Build a Firehouse
firehouse = Building.new(10,4,3,["wood", "metal"],["red"], true)

# Build a Train Station
station = Building.new(30,10,4,["concrete", "metal"], ["white", "red"], true)

#########################

# Create a new subclass for Hospital
class Hospital < Building
  attr_accessor :patients
  def initialize(num_patients, wall_count, story_count, materials, paint_colors, ac)
    @patients = num_patients
    super
  end

  def ring_bell
  puts "WOO OOO WOO OOO WOO OOO!!!!"

# Build the Cleveland Clinic
cleveland_clinic = Hospital.new(1000,10,5,["concrete", "wood"], ["white"], true)
