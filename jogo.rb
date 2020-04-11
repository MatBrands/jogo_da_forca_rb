require_relative 'lib/jogo_da_forca'
require_relative 'lib/arquivo'
require 'colorize'

game = Jogo.new
x = 0
puts "Bem vindo ao nosso jogo da forca !"
puts "Selecione uma opção a seguir para iniciarmos"
until (x > 4) do
  puts "1 - Iniciar o jogo\n".colorize(:green) + "2 - Ver nosso banco de palavras\n".colorize(:yellow) + "3 - Sobre o jogo\n4 - Ajuda\n".colorize(:cyan) + "Caso queira sair, digite qualquer coisa".colorize(:red)
  x = gets.to_i
  system ("clear")
  case x
    when 1
      ganho = game.iniciar
      if ganho then
        game.victory = (game.victory+1)
      else
        game.defeat = (game.defeat+1)
      end
    when 2
      Arq.lendo_palavras
      gets
      system ("clear")
    when 3
      puts "Jogo referente ao projeto final do curso de POO em Ruby no Udemy, linguagem do futuro, está vindo com tudo em 2020".colorize(:light_red)
      gets
      system ("clear")
    when 4
      puts "Se vira !".colorize(:light_red)
      gets
      system ("clear")
    else
      system ("clear")
    end
end
puts "Obrigado por jogar !".colorize(:light_gray) +"\n#{game.victory} Vitórias e #{game.defeat} Derrotas"
gets
