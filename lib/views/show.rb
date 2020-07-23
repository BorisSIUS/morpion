class Show

  attr_accessor :tile_array, :pixel_line

  def initialize(screen)
    @tile_array = screen.current_board.boardcase_array
    a = ["|             |", "|             |", "|   _______   |"]
    b = ["|             |", "|\\           /|", "|  /       \\  |"]
    c = ["|             |", "| \\         / |", "| /         \\ |"]
    d = ["|             |", "|  \\       /  |", "|/           \\|"]
    e = ["|             |", "|   \\     /   |", "||           ||"]
    f = ["|             |", "|    \\   /    |", "||           ||"]
    g = ["|             |", "|     \\ /     |", "||           ||"]
    h = ["|             |", "|      X      |", "||           ||"]
    i = ["|             |", "|     / \\     |", "||           ||"]
    j = ["|             |", "|    /   \\    |", "||           ||"]
    k = ["|             |", "|   /     \\   |", "||           ||"]
    l = ["|             |", "|  /       \\  |", "|\\           /|"]
    m = ["|             |", "| /         \\ |", "| \\         / |"]
    n = ["|             |", "|/           \\|", "|  \\_______/  |"]
    o = ["|             |", "|             |", "|             |"]
    @pixel_line = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, "| ", "|A", "|B", "|C"]
  end







  def throw(my_game)
    board_display_array = []

    tile_array.each do |boardcase|
      if boardcase.status == "player_one"
        board_display_array << 1
      elsif boardcase.status == "player_two"
        board_display_array  << 2
      else
        board_display_array  << 0
      end
    end

    puts "_______________________________________________"
    puts "| |     1       ||      2      ||      3      |"

    puts "-"*47

    15.times do |indx|
      indx == 7 ? letter = "|A" : letter = "| " 
      puts "#{letter}#{@pixel_line[indx][board_display_array[0]]}#{@pixel_line[indx][board_display_array[1]]}#{@pixel_line[indx][board_display_array[2]]}"
    end

    puts "-"*47
    
    15.times do |indx|
      indx == 7 ? letter = "|B" : letter = "| " 
      puts "#{letter}#{@pixel_line[indx][board_display_array[3]]}#{@pixel_line[indx][board_display_array[4]]}#{@pixel_line[indx][board_display_array[5]]}"
    end

    puts "-"*47

    15.times do |indx|
      indx == 7 ? letter = "|C" : letter = "| " 
      puts "#{letter}#{@pixel_line[indx][board_display_array[6]]}#{@pixel_line[indx][board_display_array[7]]}#{@pixel_line[indx][board_display_array[8]]}"
    end

    puts "-"*47

  end
end
