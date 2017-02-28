class Loan
    attr_reader(:name, :amount)
    @@people = []


    define_method(:initialize) do |attributes|
       @name = attributes.fetch(:name)
       @amount = attributes.fetch(:amount)
    end

    define_method(:loan)  do
        num = Integer(@amount)
        loan = (num*(1%0.1)*20).round
    end

    define_singleton_method(:all) do
        @@people
    end

    define_method(:save) do
        @@people.push(self)
    end

    define_singleton_method(:clear) do
        @@people = []
    end

end