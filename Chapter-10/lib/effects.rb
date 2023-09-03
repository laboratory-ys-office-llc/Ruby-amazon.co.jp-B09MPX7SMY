module Effects
  def self.reverse
    lambda do |words|
      words.split(' ').map(&:reverse).join(' ')
    end
  end
end
