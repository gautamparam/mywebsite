class User
  attr_accessor :name, :email

  def initialize(attr = {})
    @name=attr[:name]
    @email=attr[:email]
  end

  def format_mail
    "#{@name} | #{@email}"
  end
end