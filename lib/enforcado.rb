class Artes
  def self.exibindo (imagem)
    posicao = 0
    File.open(File.expand_path('../artes.txt', __FILE__), 'r') do |arq|
      while line = arq.gets do
        if (line[0] == "[") then
          posicao+=1
        end
        if (posicao == imagem && line[0] != '\n') then
          puts line
        end
      end
    end
  end
end
