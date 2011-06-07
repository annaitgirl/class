class Foo
  attr_accessor :name
end

# listing out the methods on an object
a_blank_object = Object.new
foo = Foo.new
methods_on_foo =(foo.methods - a_blank_object.methods)

methods_on_foo.each { |m| puts m }

