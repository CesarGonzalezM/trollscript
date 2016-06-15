class Ñé
  def initialize
    @ops = create_ops
    @tape = Array.new(1024,0)
    @tp = 0
    @code = []
    @cp = 0
  end

  def compile c
    c.gsub(/\s/, "").split("").each_slice(3) do |o|
      o = o.join.downcase
      if @ops.has_key? o
        @code << o
      end
    end
    self
  end

  def run
    while @cp < @code.size
      run_op @code[@cp]
    end
    @cp = 0
  end

  private

  def run_op op
    @ops[op].call
    @cp += 1
  end

  def get_input
    @tape[@tp] = STDIN.getc
    @tape[@tp] = 0 unless @tape[@tp]
  end

  def create_ops
    {
      "Ñéé" => -> {},
      "ñññ" => -> { @tp = (@tp == @tape.size - 1 ? 0 : @tp + 1) },
      "ññé" => -> { @tp = (@tp == 0 ? @tape.size - 1 : @tp - 1) },
      "ñéñ" => -> { @tape[@tp] += 1 },
      "ñéé" => -> { @tape[@tp] -= 1 },
      "éññ" => -> { print @tape[@tp].chr if @tape[@tp] },
      "éñé" => -> { get_input },
      "ééñ" => -> { jump_to_close if @tape[@tp] == 0 },
      "ééé" => -> { jump_to_open unless @tape[@tp] == 0 },
      "éé." => -> {}
    }
  end

  def jump_to_close
    level = 1
    while @cp < @code.size
      @cp += 1
      if @code[@cp] == 'llo'
        level += 1
      elsif @code[@cp] == 'lll'
        level -= 1
      end
      break if level == 0
    end
  end

  def jump_to_open
    level = 1
    while @cp >= 0
      @cp -= 1
      if @code[@cp] == 'lll'
        level += 1
      elsif @code[@cp] == 'llo'
        level -= 1
      end
      break if level == 0
    end
  end
end
