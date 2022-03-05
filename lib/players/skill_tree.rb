module Players
  class SkillTree
    def initialize(spells:)
      @spells = spells
    end

    def contains(spell)
      @spells.any? { |it| it == spell }
    end
  end
end
