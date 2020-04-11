require_relative 'arquivo'
require_relative 'enforcado'
require 'colorize'

class Jogo
  attr_accessor :victory
  attr_accessor :defeat
  def initialize
    @victory = 0
    @defeat = 0
  end
  def iniciar
    #Sorteou a palavra no banco
    palavra = Arq.sortear_palavra.chomp!
    #Fizemos uma palavra auxiliar "__ ..."
    tam = palavra.size
    try = ""
    tam.times {|x| try[x] = "_"}
    a = String
    erro = 0
    corrigir = ""
    while (try!=palavra && erro != 7) do
      tam.times {|x| corrigir[x] = try[x]}
      puts "#{7 - erro} tentativas !"
      Artes.exibindo(erro+1)
      tam.times {|x| print "#{try[x]} "}
      puts
      puts "Digite uma letra: "
      a = gets.chomp
      tam.times {|x| if (a[0] == palavra[x]) then try[x] = a[0] end}
      if (corrigir != try) then
        puts "Você teve um acerto !".colorize(:green)
        gets
      else
        erro += 1
        puts "Você errou !".colorize(:red)
        gets
      end
      system ("clear")
    end
    if palavra == try then
      puts "Parabéns ! Você acertou a palavra #{palavra} com #{erro} erros"
      return true
    else
      puts "Não foi dessa vez, a palavra era: #{palavra}"
      return false
    end
  end
end
