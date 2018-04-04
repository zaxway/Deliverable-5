# Mohit Jain
# CS 1632
# This is the city class.
class City
  attr_reader :direction, :new_location_arr, :current_location
  def initialize
    @locations = %w[Hillman Museum Cathedral Hospital]
    # display locations for interesections and streets they are on.
    @hillman = ['Fifth Avenue', 'Foo St.']
    @hospital = ['Fourth Avenue', 'Foo St.']
    @cathedral = ['Fourth Avenue', 'Bar St.']
    @museum = ['Fifth Avenue', 'Bar St.']
  end

  def gets_new_location(current_location, direction)
    nulled = [nil, nil, nil]
    nulled_function(current_location, direction, nulled)
    new_location = gets_direction(direction, current_location)
    new_location_arr = [current_location, new_location, direction]
    new_location_arr
  end

  def nulled_function(current_local, direct, nulled)
    if current_local.nil?
      nulled
    elsif direct.nil?
      randoms = rand(0..3)
      @locations[randoms]
    end
  end

  def gets_direction(directing, current_locals)
    older = current_locals
    hello = directing
    new_location =
      case hello
      when 'Fourth Avenue'
        if older == 'Hospital'
          'Cathedral'
        else # older == 'Cathedral'
          'Outside City'
        end

      when 'Fifth Avenue'
        if older == 'Museum'
          'Hillman'
        else # older == 'Hillman'
          'Outside City'
        end

      when 'Foo St.'
        if older == 'Hillman'
          'Hospital'
        else # older == 'Hospital'
          'Hillman'
        end

      when 'Bar St.'
        if older == 'Cathedral'
          'Museum'
        else # older == 'Museum'
          'Cathedral'
        end
      else
        older
      end
    new_location
  end

  def gets_new_direction(current_location)
    return nil if current_location.nil?
    new_direction = rand(0..1)
    if current_location == 'Cathedral'
      return @cathedral[new_direction]
    elsif current_location == 'Hillman'
      return @hillman[new_direction]
    elsif current_location == 'Museum'
      return @museum[new_direction]
    elsif current_location == 'Hospital'
      return @hospital[new_direction]
    else
      return nil
    end
  end
end
