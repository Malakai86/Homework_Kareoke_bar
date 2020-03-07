class Guest

attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

def spend(cash)
  return @wallet -= cash
end

end
