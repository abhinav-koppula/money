require 'spec_helper'

describe Money do

  context 'money summation' do
    it "should add the amounts 3rs 25ps and 4rs 75ps" do
      amount_1 = Money.new(3, 25)
      amount_2 = Money.new(4, 75)
      sum_amount = amount_1 + amount_2
      expected_amount = Money.new(8, 0)
      expect(sum_amount).to eq(expected_amount)
    end


    it "should add the amounts 0rs 125ps and 4rs 72ps" do
      amount_1 = Money.new(0, 125)
      amount_2 = Money.new(4, 72)
      sum_amount = amount_1 + amount_2
      expected_amount = Money.new(5, 97)
      expect(sum_amount).to eq(expected_amount)
    end

    it "should add the amounts 0rs 0ps and 0rs 0ps" do
      amount_1 = Money.new(0, 0)
      amount_2 = Money.new(0, 0)
      sum_amount = amount_1 + amount_2
      expected_amount = Money.new(0, 0)
      expect(sum_amount).to eq(expected_amount)
    end
  end

  context 'money subtraction' do
    it "should subtract the amounts 4rs 75ps and 3rs 25ps" do
      amount_1 = Money.new(4, 75)
      amount_2 = Money.new(3, 25)
      difference_amount = amount_1 - amount_2
      expected_amount = Money.new(1, 50)
      expect(difference_amount).to eq(expected_amount)
    end

    it "should subtract the amounts 3rs 25ps and 4rs 75ps" do
      amount_1 = Money.new(4, 75)
      amount_2 = Money.new(3, 25)
      difference_amount = amount_2 - amount_1
      expected_amount = Money.new(-1, 50)
      expect(difference_amount).to eq(expected_amount)
    end
    it "should subtract the amounts 4rs 0ps and 4rs 0ps" do
      amount_1 = Money.new(4, 0)
      amount_2 = Money.new(4, 0)
      difference_amount = amount_1 - amount_2
      expected_amount = Money.new(0, 0)
      expect(difference_amount).to eq(expected_amount)
    end

    it "should subtract the amounts 2rs 50ps and 1rs 0ps" do
      amount_1 = Money.new(2, 50)
      amount_2 = Money.new(1, 0)
      difference_amount = amount_1 - amount_2
      expected_amount = Money.new(1, 50)
      expect(difference_amount).to eq(expected_amount)
    end
  end

  context "money equality" do

    it "should not be equal for different type" do
      amount = Money.new(1, 2)
      array = Array.new(1)
      expect(amount).to_not eq(array)
    end

    it "should have same object id" do
      amount1 = Money.new(1, 2)
      expect(amount1.object_id).to eq(amount1.object_id)
    end
  end

end