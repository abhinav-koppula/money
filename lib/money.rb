#Class Money would perform calculations for given amounts
class Money
  attr_accessor :rupees ,:paise
  def initialize(rupees, paise)
    @rupees = rupees
    @paise = paise
  end

  def eq(other)
    self == other
  end

  def hash
    [@rupees, @paise].hash
  end

  def == amount
    [@rupees,@paise] == [amount.rupees,amount.paise]
  end

  def convert_to_paise()
    paise = @rupees*100 + @paise
  end

  def convert_to_money(paise)
    if paise<0
    Money.new(paise/100 + 1, paise % 100)
    else
      Money.new(paise/100, paise % 100)
    end
  end

  def + (amount)
    converted_paise1 = self.convert_to_paise()

    converted_paise2 = amount.convert_to_paise()

    sum_paise = converted_paise1 + converted_paise2

    convert_to_money(sum_paise)
  end

  def - (amount)
    converted_paise1 = self.convert_to_paise()

    converted_paise2 = amount.convert_to_paise()

    difference_paise = converted_paise1 - converted_paise2

    convert_to_money(difference_paise)
  end

end