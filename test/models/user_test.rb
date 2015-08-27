require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Example User', password: 'secret')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name should be present' do
    @user.name = ' '
    assert_not @user.valid?
  end

  test 'name should be unique' do
    duplicate_user = @user.dup
    duplicate_user.name = @user.name
    @user.save
    assert_not duplicate_user.valid?
  end

  test 'password should be present' do
    @user.password = ' '
    assert_not @user.valid?
  end
end
