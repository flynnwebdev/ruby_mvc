class BarModel
    attr_accessor :drink_amounts

    def initialize
        @drink_amounts = {
            beer: 20,
            martini: 10,
            coke: 40
        }
    end

    def has_stock?(item_name, amount=1)
        name = item_name.to_sym
        @drink_amounts.include?(name) && @drink_amounts[name] >= amount
    end

    def decrease_stock(name, amount=1)
        @drink_amounts[name.to_sym] -= amount
    end
end
