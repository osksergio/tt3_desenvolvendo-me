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
    result1 = convert1.hash_string
    expect(result1).to eq("Maria Neusa97905796671Sao Paulo  1234        \nRicardo Fon44010762900Rio Grande 567        ")
  end

  it 'Teste 02: convertendo o primeiro conjunto de hashes' do
    hashes2 =
      [
        { name: 'Sergio Koiti Michelasso Oseko',
          cpf: '97905796671',
          state: 'Sao Paulo',
          value: '2222' },
        { name: 'Leonardo Farias Oseko',
          cpf: '44010762900',
          state: 'Rio Grande do Sul',
          value: '5555' }
      ]

    convert2 = HashesToString.new(hashes2)
    result2 = convert2.hash_string
    expect(result2).to eq("Sergio Koit97905796671Sao Paulo  2222        \nLeonardo Fa44010762900Rio Grande 5555       ")    
  end
end
