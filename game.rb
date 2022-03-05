require_relative './lib/player'
require_relative './lib/players/attributes'
require_relative './lib/players/skill_tree'
require_relative './lib/players/stats'
require_relative './lib/spells/spell'
require_relative './lib/spells/magic_spell'

spell = Spells::MagicSpell.new(name: 'Fire Bolt', cost: 20)
xablaus_spell = Spells::MagicSpell.new(name: 'Xablaus!', cost: 0)
attributes = Players::Attributes.new(
  strength: 10,
  vitality: 10,
  intelligence: 10,
  agility: 10
)
stats = Players::Stats.new(health: 80, mana: 21)

atari = Player.new(
  name: 'Atari',
  stats: stats,
  skill_tree: Players::SkillTree.new(spells: [spell]),
  attributes: attributes
)

atari.attack!
atari.cast! spell
atari.cast! xablaus_spell
atari.cast! spell

puts "#{atari.name} stats: #{atari.stats}"
