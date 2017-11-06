class Orange_Tree
  def plant
    @height = 0
    @fruit  = 0
    @alive  = true
  end

  def height
    if @alive
      @height
    else
      "It's dead (H)!"
    end
  end
  def how_many_oranges
    if @alive
      @fruit
    else
      "It's dead (O)!"
    end
  end
  def one_year_passes
    if @alive
      @height = @height + 0.4
      @fruit = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        "Too old and died!"
      elsif @height > 2
        @fruit = (@height * 15 - 25).to_i
        "Has grown #{@height}m tall," +
        " and has #{@fruit} oranges."
      else
        "This year your tree grew to #{@height}m tall," +
        " but no fruit. "
      end
    else
      "A year later, the tree is DEAD!"
    end
  end
  def pick_an_orange
    if @alive
      if @fruit > 0
        @fruit = @fruit - 1
        "Have an orange!"
      else
        "No oranges!"
      end
    else
      "It's dead!"
    end
  end
end
ot = Orange_Tree.new
200.times do
  ot.one_year_passes
end
puts(ot.one_year_passes)
puts(ot.how_many_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.how_many_oranges)
puts(ot.pick_an_orange)
