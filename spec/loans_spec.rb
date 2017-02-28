require('rspec')
  require('./lib/loans.rb')

  describe(Loan) do
      before() do
    Loan.clear()
  end

    describe('#name') do
        it("return name ") do
         test_loan  = Loan.new({:name=>"kenn",:amount=>300})
        expect(test_loan.name()).to(eq("kenn"))
        end
    end

    describe('#amount') do
        it("return amount ") do
         test_loan  = Loan.new({:name=>"kenn",:amount=>300})
        expect(test_loan.amount()).to(eq(300))
        end
    end

    describe('#loan') do
        it("return amount ") do
         test_loan  = Loan.new({:name=>"kenn",:amount=>300})
        expect(test_loan.loan()).to(eq(600))
        end
    end

    describe('.all') do
        it("is empty at first") do
         expect(Loan.all()).to(eq([]))
        end
    end

    describe('.save') do
        it("saves entry of amount borrowed") do
            test_loan = Loan.new({:name=>"kenn", :amount=>300})
            test_loan.save()
            expect(Loan.all()).to(eq([test_loan]))
        end
    end

    describe('.clear') do
        it("clears all of the saved loan borrowers") do
          test_loan = Loan.new({:name=>"kenn", :amount=>300 })
          Loan.clear()
          expect(Loan.all()).to(eq([]))
        end
    end

   
end