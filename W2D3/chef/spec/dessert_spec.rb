require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
    let(:chef) { double("chef", name: "Mario") }
    let(:cupcake) { Dessert.new("cupcake", 20, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(cupcake.type).to eq("cupcake")
    end

    it "sets a quantity" do
      expect(cupcake.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(cupcake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cupcake", "x", :chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cupcake.add_ingredient("chocolate")

      expect(cupcake.ingredients).to include("chocolate")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["flour", "sugar", "eggs", "milk", "cocoa", "salt", "baking soda"]
      ingredients.each do |item|
        cupcake.add_ingredient(item)
      end

      cupcake.mix!
      expect(cupcake.ingredients).to_not eq(ingredients)

    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cupcake.eat(4)

      expect(cupcake.quantity).to be < (20)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ cupcake.eat(100)}.to raise_error
    end


  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Mario the Great Baker")
      expect(cupcake.serve).to include("Chef Mario the Great Baker has made 20 cupcakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with (cupcake)
      cupcake.make_more

    end

  end


end
