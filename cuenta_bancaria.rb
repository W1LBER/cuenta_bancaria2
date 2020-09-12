class Usuario
    attr_reader :user, :acc
    def initialize(user, acc)
      @user = user
      @acc = [] 
      @acc = @acc.push(acc)
    end
end


class CuentaBancaria
  attr_accessor :saldo
  attr_reader :banco, :numero_de_cuenta
  def initialize(banco, numero_de_cuenta, saldo=0)
    @banco = banco
    @numero_de_cuenta = numero_de_cuenta
    @saldo = saldo
  end

  def transferir(monto, cuenta_bancaria)
    @saldo = @saldo - monto 
    cuenta_bancaria.saldo = cuenta_bancaria.saldo + monto
  end

  def info
    puts "
    #{@banco}
    #{@numero_de_cuenta} 
    #{@saldo} 
    "
  end

end


acc1 = CuentaBancaria.new('Bank', 12345678, 200)
acc2 = CuentaBancaria.new('Bank', 12354657, 200)

user1 = Usuario.new('Diego', acc1) 
user2 = Usuario.new('Mirson', acc2)

acc1.transferir(200, acc2)

