require 'json'
require 'yaml'

class MyClass
  attr_accessor :name
  attr_accessor :email

  def initialize(name, email)
    self.name=name
    self.email=email
  end

  def to_json(*a) {
      'json_class'  => self.class.name,
      'data' => [ name, email ]
  }.to_json(*a)
  end

  def self.json_create(o)
    new(*o['data'])
  end
end

a = MyClass.new("peter", "peter@mail.com")

#serialized = JSON.generate(a)
serialized2 = a.to_yaml

puts a.name
puts a.email
#puts serialized
puts "<<<"
puts serialized2
puts ">>>"

#b = JSON.parse(serialized)
b = YAML.load(serialized2)
puts b.name
puts b.email

