class Player
  attr_reader :name, :stats, :skill_tree, :attributes

  def initialize(name:, stats:, skill_tree:, attributes:)
    @name = name
    @stats = stats
    @skill_tree = skill_tree
    @attributes = attributes
  end

  def attack!
    return "#{name} attacked! Dealt #{calculate_damage} hit points."
  end

  def cast!(spell)
    return "#{name} does not have enough mana to cast #{spell.name}!" if spell.cost > stats.mana
    return "#{name} did not learn #{spell.name} yet." unless skill_tree.contains(spell)

    stats.consume_mana(spell.cost)
    damage = spell.calculate_damage(self)
    return "#{name} cast #{spell.name}. Dealt #{damage} hit points."
  end

  private

  def calculate_damage
    rand(1..50)
  end
end
