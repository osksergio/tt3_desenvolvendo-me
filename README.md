# README - Teste Técnico III
- Mentoria: DesenvolvmendoMe
- Missão: Primeira Vaga
- Batalha: TT3 (Teste Técnico III)
- Autor: Sergio Oseko (https://github.com/osksergio)
- Mentor: Marco Castro

Abaixo estão as tecnologias utilizadas neste projeto TT2:

* Ruby 3.1.2
* Rails 6.1.7
* Sqlite3

Questões e problemas do teste técnoco / soluções implementadas:

**Questão 1** - O objetivo desta questão é escrever um método que receba uma lista de hashes e retorne um string. Considere o seguinte código:
```
input = [
  { name: 'Maria Neusa de Aparecida',
    cpf: '97905796671',
    state: 'Sao Paulo',
    value: '1234' },
  { name: 'Ricardo Fontes',
    cpf: '44010762900',
    state: 'Rio Grande do Sul',
    value: '567' }
]

def solucao(arg)
  # Retornar um string
end
```

solucao(input) == "Maria Neusa97905796671Sao Paulo 1234 \nRicardo Fon44010762900Rio Grande 567

[Solução](  )

**Questão 2** - O objetivo desta questão é estender a solução acima de modo que o formato do string retornado seja configurável.

Considere um arquivo yaml no seguinte modelo. As chaves de primeiro nível (name, cpf, etc) representam atributos do hash e não são fixas (quer dizer, elas podem diferir de um arquivo yaml para outro). As chaves de segundo nível são sempre as mesmas: length, align, e padding.

length: Com quantos caracteres deve ser formatado esse campo no output. Se o conteúdo do campo ultrapassar esse comprimento, ele deve ser truncado.
align: Indica se o conteúdo do campo deve ser alinhado a esquerda ou a direita.
padding: Caso o conteúdo do cammpo seja mais curto que a length especificada, o padding indica se o espaço restante deve ser preenchido com espaços em branco ou zero.

[Solução](  )

**Questão 3** - O objetivo desta questão é implementar a operação inversa da questão 2.

Isto é: escreva um método que recebe como argumento um string e retorna um hash. A forma como ele deve ler o string para extrair os valores é dada por um arquivo yaml como os da questão 2. Por exemplo, se seguirmos o arquivo “format-1.yaml”:

[Solução](  )
