class Confection
    def prepare
      'Baking at 350 degrees for 25 minutes.'
    end
  end
  
  class Cupcake < Confection
    def prepare
      super + ' Applying frosting.'
    end
  end
  
  class BananaCake < Confection
  end
  
  cupcake = Cupcake.new
  banana_cake = BananaCake.new
  
  puts cupcake.prepare
  puts banana_cake.prepare
  