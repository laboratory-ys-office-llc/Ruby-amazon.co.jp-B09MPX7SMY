module Effects
  def self.reverse
    lambda do |words|
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    lambda do |words|
      words.chars.map { |c| c == ' ' ? c : c * rate }.join
    end
  end
end
