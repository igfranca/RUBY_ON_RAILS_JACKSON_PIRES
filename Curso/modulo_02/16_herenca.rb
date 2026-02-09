#Herança, usa-se < para indicar a herença e não existe herença multipla (não é possível herdar de várias classes ao mesmo tempo)
class Pessoa
  attr_accessor :nome, :email;
end

class PessoaFisica < Pessoa
  attr_accessor :cpf;
  
  def falar(texto)
    puts texto;
  end
end

class PessoaJuridica < Pessoa
  attr_accessor :cnpj;
  
  def pagar_fornecedor
    puts "Pagando fornecedor..."
  end
end

#setter
p1 = Pessoa.new;
p1.nome = "Igor";
p1.email = "igorfranca@gmail.com";
#getter
puts p1.nome = "Igor";
puts p1.email = "igorfranca@gmail.com";

puts ("------------------------------")

#setter
p2 = PessoaFisica.new;
p2.nome = "Joao";
p2.email = "joao@joao.com.br";
p2.cpf = "999999999";
#getter
puts p2.nome = "Joao";
puts p2.email = "joao@joao.com.br";
puts p2.cpf = "999999999";
p2.falar("Olá João!")

puts ("------------------------------")

#setter
p3 = PessoaJuridica.new;
p3.nome = "Teste";
p3.email = "teste@teste.com";
p3.cnpj = "2321321321321";
#getter
puts p3.nome = "Teste";
puts p3.email = "teste@teste.com";
puts p3.cnpj = "2321321321321";
p3.pagar_fornecedor;
