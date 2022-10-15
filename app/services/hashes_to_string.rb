# frozen_string_literal: true

# Converter lista de hashes em string
class HashesToString
  def initialize(arg)
    @hashes = arg
  end

  def hash_string
    result_string = ''
    @hashes.each do |i|
      result_string = "#{result_string} \n" unless result_string.empty?
      result_string = "#{result_string}#{i[:name][0..10].ljust(11)}#{i[:cpf][0..10].ljust(11)}#{i[:state][0..10].ljust(11)}#{i[:value][0..10].ljust(11)}"
    end
    result_string
  end
end
