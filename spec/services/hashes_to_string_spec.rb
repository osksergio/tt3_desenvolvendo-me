# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Testando a conversão de hashes em uma string' do
  it 'Teste 01: convertendo o primeiro conjunto de hashes' do
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

    convert1 = HashesToString.new(hashes1)
    result1 = convert1.hashes_to_string
    expect(result1).to eq("Maria Neusa de 97905796671Sao Paulo     00001234 \nRicardo Fontes44010762900Rio Grande do S00000567")
  end
end
