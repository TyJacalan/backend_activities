class Luffy
    def basic_move
      puts 'Gomu Gomu no Pistol!'
    end
  end
  
  class Zoro
    def basic_move
      puts 'Yaki Oni Giri!'
    end
  end

  def make_basic_move(character)
    character.basic_move
  end

  luffy = Luffy.new
  zoro = Zoro.new
  
  make_basic_move(luffy)
  make_basic_move(zoro)