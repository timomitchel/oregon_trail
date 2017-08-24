gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linked_list"
require "./lib/node"
require "./lib/wagon_train"

class WagonTrainTest <Minitest::Test
  def test_has_a_class
    wt = WagonTrain.new
    assert_instance_of WagonTrain, wt
  end

  def test_list_head_initially_nil
    wt = WagonTrain.new
    list = LinkedList.new
    assert_nil @head, wt.list
  end

  def test_assert_append_works
    wt = WagonTrain.new
    list = LinkedList.new
    wt.append("Burke")
    assert_equal "Burke", wt.list.head.surname
  end



end
