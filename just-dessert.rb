# Just Dessert


class CookieInventory
  attr_accessor :peanut_butter, :chocolate_chip, :sugar

  def initialize
    @cookie_hash = {peanut_butter: 0, chocolate_chip: 0, sugar: 0}
  end

  def cook_batch!(cookie_type, cookie_number)
    @cookie_type = cookie_type
    @cookie_number = cookie_number
    if @cookie_hash.include?(cookie_type)
      @cookie_hash[cookie_type] += cookie_number
      puts "We baked #{cookie_number} #{cookie_type} cookies!"
    else
      puts "We don't have that cookie here."
    end
  end

  def sell!(cookie_type, cookies_sold)
    @cookies_sold = cookies_sold
    if @cookie_hash.include?(cookie_type) && @cookie_hash[cookie_type] < 0
      puts "Sorry, that's more than we have."
    elsif @cookie_hash.include?(cookie_type) && @cookie_hash[cookie_type] < cookies_sold
        puts "That's more than we have. Please try again."
    elsif @cookie_hash.include?(cookie_type) && @cookie_hash[cookie_type] > 0
      @cookie_hash[cookie_type] -= cookies_sold
      puts "Thank you for buying #{cookies_sold} #{cookie_type} cookies!"
    else
      puts "Sorry, we don't have #{cookie_type} cookies."
    end
  end

end
