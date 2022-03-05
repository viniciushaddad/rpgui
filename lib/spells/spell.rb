module Spells
  class Spell
    attr_reader :name, :cost

    def initialize(cost:, name:)
      @name = name
      @cost = cost
    end

    def calculate_damage(player)
      damage_expression(player)
    end

    private

    def damage_expression(player)
      throw NotImplementedError, "Must implement spells with its damage expression!"
    end
  end
end
