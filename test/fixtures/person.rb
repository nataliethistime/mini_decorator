require_relative 'person_decorator'
require 'mini_decorator'
require 'ostruct'

class Person
  include MiniDecorator.new(PersonDecorator.new)

  def initialize(params)
    @first_name = params[:first_name] || ''
    @last_name = params[:last_name] || ''
    @birthday = params[:birthday]
  end

  attr_reader :first_name, :last_name, :birthday
end
