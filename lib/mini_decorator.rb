class MiniDecorator < Module
  def initialize(decorator)
    define_method(:decorate) do |property|
      decorator.public_send(property, self)
    end
  end
end
