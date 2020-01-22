require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../pub.rb')
require_relative('../drinks.rb')
require_relative('../customers.rb')

class TestCustomers < Minitest::Test








end
