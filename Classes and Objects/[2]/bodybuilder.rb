class Bodybuilder
  def initialize(name)
    @name = name
    @biceps  = 0
    @triceps = 0
    @weight  = 0
  end

  def change(biceps, triceps, weight)
    @biceps  = biceps
    puts @name + ' biceps: ' + @biceps.to_s
    @triceps = triceps
    puts @name + ' triceps: ' + @triceps.to_s
    @weight  = weight
    puts @name + ' weight: ' + @weight.to_s
  end
end
