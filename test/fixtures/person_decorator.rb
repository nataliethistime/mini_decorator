class PersonDecorator
  def name(person)
    "#{person.first_name} #{person.last_name}"
  end

  def birthday(person)
    person.birthday.strftime('%d/%m/%Y')
  end
end
