module StringCalculator

  def self.add(string)
    delim, string = extract_delim(string)
    string.gsub!(/\n/, delim)
    return string.to_i unless string.include?(delim)
    nums = string.split(delim)
    nums.inject(0) { |t, e| t + e.to_i }
  end

  def self.extract_delim(string)
    delim = ","
    return [delim, string] unless string[0..1] == ("//")
    delim = string[2]
    [ delim, string[4..-1] ]
  end
end
