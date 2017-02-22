class Nation < ActiveRecord::Base
  belongs_to :user

  def assign_values
    @nation = Nation.last
    @religions = {'Church of the Flying Spaghetti Monster' => 70, 'Lords of Kobol'=>  60, 'Pastafarian' =>  80, 'Church of Cthulu' =>  75}
    @land_types_capital = {"Island" => 500, "Mountains" => 400, "Desert" => 600, "Forest" => 700, "Coastal" => 800, "Grasslands" => 650}
    @land_types_resources = {"Island" => "stability", "Mountains" => "minerals", "Desert" => "oil", "Forest" => "lumber", "Coastal" => "capital", "Grasslands" => "metal"}

    if @nation.economy_type == "Capitalism"
      @nation.update(lumber: 500, minerals: 750, metal: 750, oil: 1000)
      @stability = 70

      @religions.each do |key, value|
        if @nation.religion == key
          @stability *= value
          @stability /= 100
          @nation.update(stability: @stability)
        end
      end

      @capital = 90
      @land_types_capital.each do |key, value|
        if @nation.basic_geography == key
          @capital *= value
          @capital /= 50
          @nation.update(capital: @capital)
        end
      end

    elsif @nation.economy_type == "Communism"
      @nation.update(lumber: 750, minerals: 750, metal: 750, oil: 750)
      @stability = 80
      @religions.each do |key, value|
        if @nation.religion == key
          @stability *= value
          @stability /= 100
          @nation.update(stability: @stability)
        end
      end

      @capital = 90
      @land_types_capital.each do |key, value|
        if @nation.basic_geography == key
          @capital *= value
          @capital /= 100
          @nation.update(capital: @capital)
        end
      end

    else
      @nation.update(lumber: 1000, minerals: 750, metal: 750, oil: 500)
      @stability = 100
        @religions.each do |key, value|
          if @nation.religion == key
            @stability *= value
            @stability /= 100
            @nation.update(stability: @stability)
          end
        end
      @capital = 90
      @land_types.each do |key, value|
        if @nation.basic_geography == key
          @capital *= value
          @capital /= 100
          @nation.update(capital: @capital)
        end
      end
    end
  end
end
