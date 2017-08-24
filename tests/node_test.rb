gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node"

class NodeTest < Minitest::Test
  def test_is_node_class
    node = Node.new("something")
    assert_equal  Node, node.class
  end

  def test_it_has_a_name
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_can_be_another_name
    node = Node.new("Timo")
    assert_equal "Timo", node.surname
  end

  def test_next_node_nil
    node = Node.new("Burke")
    assert_nil node.next_node
  end


end
