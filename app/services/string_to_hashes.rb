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

    for i in 0..(@str.length - 1) do

      if @str[i] == "\n"
        array_hashes.push({name: name, cpf: cpf, state: state, value: value})
        name = ''
        cpf = ''
        state = ''
        value = ''
        line_position = 0
        i += 1
      end

      name += @str[i] if line_position <= @app_config['name']['length'] and (@str[i] != nil)

      cpf += @str[i] if line_position > (@app_config['name']['length']) and line_position <= (@app_config['name']['length'] + @app_config['cpf']['length']) and
        (@str[i] != nil)

      state += @str[i] if line_position > (@app_config['name']['length'] + @app_config['cpf']['length']) and
        line_position <= (@app_config['name']['length'] + @app_config['cpf']['length'] + @app_config['state']['length']) and (@str[i] != nil)

      value += @str[i] if line_position > (@app_config['name']['length'] + @app_config['cpf']['length'] + @app_config['state']['length']) and
        line_position <= (@app_config['value']['length']) and (@str[i] != nil)

      line_position += 1
    end

    array_hashes
  end
end
