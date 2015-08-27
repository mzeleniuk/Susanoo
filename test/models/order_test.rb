require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  def setup
    @order = Order.new(address: 'Address', email: 'test@email.com', name: 'Ruby book', pay_type: 'Check')
  end

  test 'should be valid' do
    assert @order.valid?
  end

  test 'name should be present' do
    @order.name = ' '
    assert_not @order.valid?
  end

  test 'name too long' do
    @order.name = 'Name' * 40
    assert_not @order.valid?
  end

  test 'address should be present' do
    @order.address = ' '
    assert_not @order.valid?
  end

  test 'address too long' do
    @order.address = 'Name' * 40
    assert_not @order.valid?
  end

  test 'email should be present' do
    @order.email = ' '
    assert_not @order.valid?
  end

  test 'email validation should accept valid addresses' do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @order.email = valid_address
      assert @order.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @order.email = invalid_address
      assert_not @order.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test 'pay type should be present' do
    @order.pay_type = ' '
    assert_not @order.valid?
  end

  test 'pay type right inclusion' do
    @order.pay_type = 'Nine'
    assert_not @order.valid?
  end
end
