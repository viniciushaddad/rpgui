module Spells
  class MagicSpell < Spell
    private

    def damage_expression(player)
      int = player.attributes.intelligence
      rand(1..6) * int / (int ** (0.5 / rand(1..4)))
    end
  end
end
