
class CashRegister
    attr_accessor :total, :discount, :itemarray, :last_value

    def initialize(discount=0)
         @total = 0
        @discount = discount
        @itemarray = []
        @last_value = 0
    end

    # @last_value=0
    def add_item(title, price, quantity=1)
        @last_value = (price * quantity)
        if quantity > 1 
            totprice = (price * quantity)
            self.total += totprice 
            quantity.times {@itemarray << (title)}
            

        else 
            self.total += price
            @itemarray<< (title)
        end
    end

    def apply_discount
        if discount > 0 
            self.total -= (self.total * (discount.to_f/100) )
            return "After the discount, the total comes to $#{self.total.to_i}."
        else 
            return "There is no discount to apply."   
        end
    end

    def items
    @itemarray 
    end

    def void_last_transaction
        @total -= @last_value
    end

end