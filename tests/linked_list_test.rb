gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linked_list"
require "./lib/node"
class LinkedListTest <Minitest::Test


  def test_it_is_linked_list
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_surname_is_west
    list = LinkedList.new
    list.append("West")
    assert_equal "West", list.head.surname
  end

  def test_string_returns_head
    list = LinkedList.new
    list.append("West")
    assert_equal "The West family", list.to_string
  end

  def test_count_is_1
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_head_next_node_nil
    list = LinkedList.new
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_head_is_still_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_surname_is_rhodes
    list = LinkedList.new
    list.append("Rhodes")
    assert_equal "Rhodes", list.head.surname
  end

  def test_head_next_node_still_nil
    list = LinkedList.new
    list.append("Rhodes")
    assert_nil list.head.next_node
  end

  def test_name_now_hardy
    list = LinkedList.new
    list.append("Hardy")
    assert_equal "Hardy", list.head.surname
  end

  def test_still_nil_next_node
    list = LinkedList.new
    list.append("Hardy")
    list.append("Rhodes")
    refute_nil list.head.next_node
  end

  def test_count_is_2
    list = LinkedList.new
    list.append("Hardy")
    list.append("Rhodes")
    assert_equal 2, list.count
  end

  def test_match_current_string
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_brooks_becomes_head
    list = LinkedList.new
    list.append("Brooks")
    assert_equal "Brooks", list.head.surname
    assert_equal "The Brooks family", list.to_string
  end

  def test_henderson_becomes_head
    list = LinkedList.new
    list.append("Henderson")
    assert_equal "Henderson", list.head.surname
  end

  def test_prepend_mckinney
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    assert_equal "McKinney", list.head.surname
  end

  def test_string_of_three_families_and_count
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    expected = "The McKinney family, followed by the Brooks family, " +
      "followed by the Henderson family"
    assert_equal expected, list.to_string
    assert_equal 3, list.count
  end

  def test_insert_at_place_1
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    expected = "The McKinney family, followed by the Lawson family, " +
      "followed by the Brooks family, followed by the Henderson family"
    assert_equal expected , list.to_string
  end

   def test_find_returns_family
     list = LinkedList.new
     list.append("Brooks")
     list.append("Henderson")
     list.prepend("McKinney")
     list.insert(1, "Lawson")
     assert_equal "The Brooks family", list.find(2,1)
     expected = "The Lawson family, followed by the Brooks family, " +
      "followed by the Henderson family"
     assert_equal expected,  list.find(1, 3)
   end

   def test_include_method
     list = LinkedList.new
     list.append("Brooks")
     list.append("Henderson")
     list.prepend("McKinney")
     list.insert(1, "Lawson")
     assert list.includes?("Brooks")
     refute list.includes?("Chapman")
   end

   def test_pop_on_family
     skip
     list = LinkedList.new
     list.append("Brooks")
     list.append("Henderson")
     list.prepend("McKinney")
     list.insert(1, "Lawson")
     assert_equal
   end




end
