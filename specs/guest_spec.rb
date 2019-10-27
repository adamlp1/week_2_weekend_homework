require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

def setup

  @guest1 = Guest.new("Adam", 20)
  @guest2 = Guest.new("Esijemine", 20)

end

def test_customer_has_name
  assert_equal("Esijemine", @guest2.name)
end

def test_customer_has_money_in_wallet
  assert_equal(20, @guest1.wallet)
end

def test_customer_remove_money
  @customer1.entry_fee()
  assert_equal(15, @customer1.wallet)




end
