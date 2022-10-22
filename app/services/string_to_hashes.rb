# frozen_string_literal: true
require 'yaml'

# convert strings -> hashes
class StringToHashes
  def initialize(str)
    @str = str
    @config = File.read('format.yaml')
    @app_config = YAML.load(@config)
  end

  def string_to_hashes
    array_hashes = []
    name = ''
    cpf = ''
    state = ''
    value = ''
    line_position = 0

    # varredura da string
    for i in 0..@str.length do

      if (@str[i] == "\n")
        array_hashes.push({name: name, cpf: cpf, state: state, value: value})
        name = ''
        cpf = ''
        state = ''
        value = ''
        line_position = 0
        i += 1
      end

      name += @str[i] if line_position <= @app_config['name']['length']

      cpf += @str[i] if line_position > (@app_config['name']['length']) and line_position <= (@app_config['name']['length'] + @app_config['cpf']['length'])

      state += @str[i] if line_position > (@app_config['name']['length'] + @app_config['cpf']['length']) and
        line_position <= (@app_config['name']['length'] + @app_config['cpf']['length'] + @app_config['state']['length'])

      value += @str[i] if line_position > (@app_config['name']['length'] + @app_config['cpf']['length'] + @app_config['state']['length']) and
        line_position <= (@app_config['value']['length'])

      line_position += 1
    end

    puts array_hashes
  end
end

test1 = StringToHashes.new("Maria Neusa de 97905796671Sao Paulo     00001234 \nRicardo Fontes44010762900Rio Grande do S00000567")
result1 = test1.string_to_hashes
puts result1