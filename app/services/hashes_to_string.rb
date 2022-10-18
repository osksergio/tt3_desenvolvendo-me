# frozen_string_literal: true
require 'yaml'

# Converter lista de hashes em string
class HashesToString
  def initialize(arg)
    @hashes = arg
    @config = File.read('format.yaml')
    @app_config = YAML.load(@config)
    #puts @app_config['cpf']['length']
  end

  def hashes_to_string
    result_string = ''

    @hashes.each do |i|
      f_name  = i[:name]
      f_cpf   = i[:cpf]
      f_state = i[:state]
      f_value = i[:value]

      f_name  = f_name[0..@app_config['name']['length']]
      f_cpf   = f_cpf[0..@app_config['cpf']['length']]
      f_state = f_state[0..@app_config['state']['length']]
      f_value = f_value[0..@app_config['value']['length']]

      result_string = "#{result_string} \n" unless result_string.empty?
      result_string = "#{result_string}#{f_name}#{f_cpf}#{f_state}#{f_value}"
    end
    result_string
  end
end

hashes1 =
  [
    { name: 'Maria Neusa de Aparecida',
      cpf: '97905796671',
      state: 'Sao Paulo',
      value: '1234' },
    { name: 'Ricardo Fontes',
      cpf: '44010762900',
      state: 'Rio Grande do Sul',
      value: '567' }
  ]

test1 = HashesToString.new(hashes1)
result1 = test1.hashes_to_string
puts result1
