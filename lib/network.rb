class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    all_actors = []
    @shows.each do |show|
      all_actors << show.characters
    end
    all_actors = all_actors.flatten
    sorted_salaries = all_actors.sort_by do |character| character.salary
    end
    highest_paid = sorted_salaries[-1]
    return highest_paid.actor
  end

  def payroll
    all_actors = []
    @shows.each do |show|
      all_actors << show.characters
    end
    all_actors = all_actors.flatten
    all_salaries = {}
    all_actors.each do |character|
      actor = character.actor
      salary = character.salary
      all_salaries[actor] = salary
    end
    return all_salaries
  end
end
