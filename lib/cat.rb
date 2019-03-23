class Cat
attr_accessor :cat

  describe "crookshanks"
  let! (:crookshanks) { crookshanks.new }
  it "can initialize a cat" do
    post.cat = "crookshanks"
   expect(cat).to be_a(Cat)
  end

it "cant change its name" do
expect { cat.name = "mr. whiskers" }.to raise_error NoMethodError
end

it "initializes with nervous mood" do
  expect(cat.mood).to eq("nervous")
end

it "can change its mood" do
expect(cat.mood).to eq("playful")
end


end
end
