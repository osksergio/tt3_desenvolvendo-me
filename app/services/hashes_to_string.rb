# frozen_string_literal: true

# Converter lista de hashes em string
class HashesToString
  def initialize(arg)
    @hashes = arg
  end

  fields_config = File.read("#{Rails.root}/format.yaml")
  HASHES_CONFIG = YAML.load(fields_config)

  def hash_string
    result_string = ''
    @hashes.each do |i|
      f_name  = i[:name]
      f_cpf   = i[:cpf]
      f_state = i[:state]
      f_value = i[:value]

      f_name  = f_name[1..HASHES_CONFIG[Rails.env]['name']['length']]
      f_cpf   = f_cpf[1..HASHES_CONFIG[Rails.env]['cpf']['length']]
      f_state = f_state[HASHES_CONFIG[Rails.env]['state']['length']]
      f_value = f_value[HASHES_CONFIG[Rails.env]['value']['length']]

      if [HASHES_CONFIG[Rails.env]['name']['padding']] == 'zeroes'
        char_name = '0'
      else
        char_name = ''
      end

      if [HASHES_CONFIG[Rails.env]['cpf']['padding']] == 'zeroes'
        char_cpf = '0'
      else
        char_cpf = ''
      end

      if [HASHES_CONFIG[Rails.env]['state']['padding']] == 'zeroes'
        char_state = '0'
      else
        char_state = ''
      end

      if [HASHES_CONFIG[Rails.env]['value']['padding']] == 'zeroes'
        char_value = '0'
      else
        char_value = ''
      end


      result_string = "#{result_string} \n" unless result_string.empty?
      result_string = "#{result_string}#{i[:name][0..10].ljust(11)}#{i[:cpf][0..10].ljust(11)}#{i[:state][0..10].ljust(11)}#{i[:value][0..10].ljust(11)}"
    end
    result_string
  end
end
