require('sinatra')
  require('sinatra/reloader')
  also_reload("lib/**/*.rb")
  require("./lib/loans")
  
  

  get("/") do
    # @loans = Loan.all()
    erb(:index)
  end

  post("/list") do
    name = params.fetch("name")
    amount = params.fetch("number").to_i()
    borrowed = Loan.new({:name => name, :amount => amount})
    # @money = Loan.new(@amount).loan()
    borrowed.save()
    erb(:success)
  end

 get("/list") do
    @loans = Loan.all()
    erb(:list)
  end


  