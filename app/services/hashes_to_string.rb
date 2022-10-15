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
      result_string = "#{result_string}#{i[:name]}#{i[:cpf]}#{i[:state]}#{i[:value]}"
    end
    result_string
  end
end
