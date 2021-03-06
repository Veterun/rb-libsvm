require 'spec_helper'

describe "Create examples" do
  it "from a hash" do
    example = { 11 => 0.11, 21 => 0.21, 101 => 0.99 }.to_example.sort_by(&:index)
    expect(example).to eq(Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 }).sort_by(&:index))
  end

  describe "from an array of tuples" do
    it "can create example from array of pairs" do
      example = [ [11, 0.11], [21, 0.21], [101, 0.99] ].to_example
      expect(example).to eq(Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 }).sort_by(&:index))
    end
  end
end
