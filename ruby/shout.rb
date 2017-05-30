#module Shout
#  def self.yell_angrily(words)
#    words + '!!!' + ' :('
#  end
#  def self.yelling_happily(words)
#    words + '!' + ' :)'
#  end
#end

#p Shout.yell_angrily('bah humbug')
#p Shout.yelling_happily('yippee')

module Shout
  def yell_angrily(words)
    words + '!!!' + ' :('
  end
  def yelling_happily(words)
    words + '!' + ' :)'
  end
end

class Coach
  include Shout
end

class Cop
  include Shout
end

coach = Coach.new
p coach.yelling_happily('Pick it up')

cop = Cop.new
p cop.yell_angrily('freeze')