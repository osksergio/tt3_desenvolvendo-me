# frozen_string_literal: true
require 'yaml'

class HashesToString
  def initialize(arg)
    @hashes = arg
    @config = File.read('format.yaml')
    @app_config = YAML.load(@config)
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

      if (@app_config['name']['align'] == 'left')
        f_name = f_name.ljust(@app_config['name']['length']) if (@app_config['name']['padding'] == 'spaces')
        f_name = f_name.ljust(@app_config['name']['length'], '0') if (@app_config['name']['padding'] == 'zeroes')
      elsif (@app_config['name']['align'] == 'right')
        f_name = f_name.rjust(@app_config['name']['length']) if (@app_config['name']['padding'] == 'spaces')
        f_name = f_name.rjust(@app_config['name']['length'], '0') if (@app_config['name']['padding'] == 'zeroes')
      end

      if (@app_config['cpf']['align'] == 'left')
        f_cpf = f_cpf.ljust(@app_config['cpf']['length']) if (@app_config['cpf']['padding'] == 'spaces')
        f_cpf = f_cpf.ljust(@app_config['cpf']['length'], '0') if (@app_config['cpf']['padding'] == 'zeroes')
      elsif (@app_config['cpf']['align'] == 'right')
        f_cpf = f_cpf.rjust(@app_config['cpf']['length']) if (@app_config['cpf']['padding'] == 'spaces')
        f_cpf = f_cpf.rjust(@app_config['cpf']['length'], '0') if (@app_config['cpf']['padding'] == 'zeroes')
      end

      if (@app_config['state']['align'] == 'left')
        f_state = f_state.ljust(@app_config['state']['length']) if (@app_config['state']['padding'] == 'spaces')
        f_state = f_state.ljust(@app_config['state']['length'], '0') if (@app_config['state']['padding'] == 'zeroes')
      elsif (@app_config['state']['align'] == 'right')
        f_state = f_state.rjust(@app_config['state']['length']) if (@app_config['state']['padding'] == 'spaces')
        f_state = f_state.rjust(@app_config['state']['length'], '0') if (@app_config['state']['padding'] == 'zeroes')
      end

      if (@app_config['value']['align'] == 'left')
        f_value = f_value.ljust(@app_config['value']['length']) if (@app_config['value']['padding'] == 'spaces')
        f_value = f_value.ljust(@app_config['value']['length'], '0') if (@app_config['value']['padding'] == 'zeroes')
      elsif (@app_config['value']['align'] == 'right')
        f_value = f_value.rjust(@app_config['value']['length']) if (@app_config['value']['padding'] == 'spaces')
        f_value = f_value.rjust(@app_config['value']['length'], '0') if (@app_config['value']['padding'] == 'zeroes')
      end

      result_string = "#{result_string} \n" unless result_string.empty?
      result_string = "#{result_string}#{f_name}#{f_cpf}#{f_state}#{f_value}"
    end
    result_string
  end
end

