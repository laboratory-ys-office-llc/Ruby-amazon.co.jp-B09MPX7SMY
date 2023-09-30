# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

# ConvertHashSyntaxTest テストケースクラスは、convert_hash_syntax メソッドの
# 正しい動作を確認するためのテストを提供します。
class ConvertHashSyntaxTest < Minitest::Test
  # rubocop:disable Metrics/MethodLength
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age => 20,
        :gender => :famale
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :famale
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
  # rubocop:enable Metrics/MethodLength
end
