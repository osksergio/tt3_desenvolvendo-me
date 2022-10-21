# frozen_string_literal: true
require 'yaml'

# convert strings -> hashes
class StringToHashes
  def initialize(str)
    @str = str
    @config = File.read('layout_hashes.yaml')
    @app_config = YAML.load(@config)
  end

  def string_to_hashes
    line_hash = []

    name = ''
    cpf = ''
    state = ''
    value = ''

    # varredura da string
    for i in 1..@str.length do

      if @str[i] = '\n'
        line_hash = ''
        name = ''
        cpf = ''
        state = ''
        value = ''
      end

      for name_i in 1..@app_config['name']['length']
        name = name + @str[i]
      end

      for cpf_i in 1..@app_config['cpf']['length']
        cpf = cpf + @str[i]
      end

      for state_i in 1..@app_config['state']['length']
        state = state + @str[i]
      end

      for value_i in 1..@app_config['value']['length']
        value = value + @str[i]
      end
    end
    line_hash.push({name: name, cpf: cpf, state: state, value: value})
  end
end

test1 = StringToHashes.new("Maria Neusa de 97905796671Sao Paulo     00001234 \nRicardo Fontes44010762900Rio Grande do S00000567")
result1 = test1.string_to_hashes

puts result1
