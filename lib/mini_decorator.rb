class MiniDecorator < Module
  def initialize(decorator)
    define_method(:decorate) do |property|
      if decorator.respond_to? property
        decorator.public_send(property, self)
      elsif self.respond_to? property
        self.public_send(property)
      else
        raise NoMethodError.new "No decorator or object method found for property: #{property}"
      end
    end
  end
end
