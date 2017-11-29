module AdsRuby
  class BitArray
    def initialize
      @mask = 0
    end

    def []=(position, value)
      if value == 0
        @mask ^= (1 << position)
      else
        @mask |= (1 << position)
      end
    end

    def [](position)
      @mask[position]
    end
  end
end