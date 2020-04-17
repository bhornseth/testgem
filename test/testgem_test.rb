require "test_helper"

class TestgemTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Testgem::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_some_versions_fail
    assert_equal '2.7.1', RUBY_VERSION
  end
end
