# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/effects'

# This test will fail because the Effects class is not defined.
class EffectsTest < Minitest::Test
  def test_reverse
    assert Effects
  end
end
