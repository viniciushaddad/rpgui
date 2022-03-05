module Players
  Stats = Struct.new(:health, :mana, keyword_init: true) do
    def consume_mana(cost)
      self.mana -= cost
    end
  end
end
