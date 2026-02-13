require_relative 'pagamento';

include Pagamento

p = Pagamento::Visa.new; #Não precisa utilizar o include, pois já esta sendo indicado
puts p.pagando
