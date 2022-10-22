# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Testando a conversão de uma string em hashes' do
  it 'Teste 01: convertendo o primeiro conjunto de hashes' do
    string1 = "Maria Neusa de 97905796671Sao Paulo     00001234 \nRicardo Fontes44010762900Rio Grande do S00000567\n"
    convert1 = StringToHashes.new(string1)
    result1 = convert1.string_to_hashes
    expect(result1).to eq([{:name=>"Maria Neusa de ", :cpf=>"97905796671", :state=>"Sao Paulo     ", :value=>""},
                           {:name=>"RRicardo Fontes", :cpf=>"44010762900", :state=>"Rio Grande do ", :value=>""}])
  end
end
