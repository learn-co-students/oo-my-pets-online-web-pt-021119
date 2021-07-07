class Dog
attr_accessor :dog

describe dog do
  let(:dog) {Dog.new("Daisy") }
  end

it "initializes with a name" do
  expect(dog.name).to eq("Daisy")
  end

it "can't change its name"  do
expect { dog.name = "Fido" }.to raise_error NoMethodError
  end

it "can change its mood" do
  dog.mood = ("hungry")
  expect(dog.mood).to eq("hungry")
  end
end
