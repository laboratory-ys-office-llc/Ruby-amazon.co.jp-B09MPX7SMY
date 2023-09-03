# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/effects'

# This test will fail because the Effects class is not defined.
class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end
end
