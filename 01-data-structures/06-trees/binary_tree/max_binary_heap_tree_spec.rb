include RSpec

require_relative 'max_binary_heap_tree'

RSpec.describe MaxBinaryHeapTree, type: Class do
  let (:root) { Node.new("The Matrix", 87) }

  let (:tree) { MaxBinaryHeapTree.new(root) }
  let (:pacific_rim) { Node.new("Pacific Rim", 72) }
  let (:braveheart) { Node.new("Braveheart", 78) }
  let (:jedi) { Node.new("Star Wars: Return of the Jedi", 80) }
  let (:donnie) { Node.new("Donnie Darko", 85) }
  let (:inception) { Node.new("Inception", 86) }
  let (:district) { Node.new("District 9", 90) }
  let (:shawshank) { Node.new("The Shawshank Redemption", 91) }
  let (:martian) { Node.new("The Martian", 92) }
  let (:hope) { Node.new("Star Wars: A New Hope", 93) }
  let (:empire) { Node.new("Star Wars: The Empire Strikes Back", 94) }
  let (:mad_max_2) { Node.new("Mad Max 2: The Road Warrior", 98) }

  describe "#insert(data)" do
    it "properly insert a node as a left child" do
      tree.insert(root, pacific_rim)
      expect(root.left.title).to eq "Pacific Rim"
    end

    it "properly insert a node as a right child" do
      tree.insert(root, pacific_rim)
      tree.insert(root, donnie)
      expect(root.right.title).to eq "Donnie Darko"
    end

    it "properly insert a node as a left left child" do
      tree.insert(root, pacific_rim)
      tree.insert(root, donnie)
      tree.insert(root, braveheart)
      expect(root.left.left.title).to eq "Pacific Rim"
    end

    it "properly insert a node as a left right child" do
      tree.insert(root, pacific_rim)
      tree.insert(root, donnie)
      tree.insert(root, braveheart)
      tree.insert(root, jedi)
      expect(root.left.right.title).to eq "Braveheart"
    end

    it "properly insert the biggest rating to root" do
      tree.insert(root, pacific_rim)
      tree.insert(root, donnie)
      tree.insert(root, braveheart)
      tree.insert(root, mad_max_2)
      expect(root.title).to eq "Mad Max 2: The Road Warrior"
    end
  end


end