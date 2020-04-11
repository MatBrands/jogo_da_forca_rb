class Arq
  def self.lendo_palavras
    File.open(File.expand_path('../../bancodepalavras.txt', __FILE__), 'r') do |arq|
      while line = arq.gets
        puts line
      end
    end
  end
  def self.sortear_palavra
    a = []
    File.open(File.expand_path('../../bancodepalavras.txt', __FILE__), 'r') do |arq|
      while line = arq.gets
        a.push(line)
      end
    end
      return a.sample
  end
end
