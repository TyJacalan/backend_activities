require 'rspec'

module AdminPermission
  def edit_users_profile
    puts 'Admin updated all users profile'
  end
end

module BuyerPermission
  def buy
    puts 'Buyer has bought an item'
  end
end

class User
  attr_accessor :username, :password, :ip_address

  def initialize(username, password, ip_address)
    @username = username
    @password = password
    @ip_address = ip_address
  end

  protected

  def login
    puts "User logged in. IP address: #{@ip_address}"
  end

  private

  def change_username(new_username)
    @username = new_username
    puts "Username changed for #{@username}."
  end

  def change_password(new_password)
    @password = new_password
    puts "Password changed for #{@username}."
  end
end

class Admin < User
  include AdminPermission

  def admin_login
    login
  end

  def change_username(new_username)
    @username = new_username
    puts "Username changed for #{@username}."
  end

  def change_password(new_password)
    @password = new_password
    puts "Password changed for #{@username}."
  end
end

class Buyer < User
  include BuyerPermission

  def login
    super
  end
end

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
puts my_admin.admin_login

## rspec
define 'Admin' do
  it 'can login' do
    my_admin = Admin.new('avionuser', 'password', '127.0.0.1')

    expect do
      my_admin.admin_login
    end.to output('User logged in. IP address: 127.0.0.1').to_stdout
  end

  it 'can edit users profile' do
    expect do
      my_admin.edit_users_profile
    end.to output('Admin updated all users profile').to_stdout
  end

  it 'can change username' do
    my_admin.change_username = 'avionuser_new'
    expect(my_admin.username).to eq('avionuser_new')
  end
end

define 'Buyer' do
  it 'can login' do
    juan = Buyer.new('juan', 'password', '127.0.0.1')

    expect do
      juan.login
    end.to output('User logged in. IP address: 127.0.0.1').to_stdout
  end

  it 'buy' do
    expect do
      juan.buy
    end.to output('Buyer has bought an item').to_stdout
  end

  it 'can change username' do
    juan.change_username = 'juandelacruz'
    expect(juan.username).to eq('juandelacruz')
  end
end
