require 'pry'

class CashRegister 
    @@all_items = []

    attr_accessor :total, :discount, :items_array, :item_prices

    def initialize(discount = 0)

        @total = 0
        @discount = discount
        @items_array = []
    end

    def add_item(title, price, quantity = 1) 
        item = {
            title: title,
            price: price,
            quantity: quantity
        }
        @items_array << item
        @total += price * quantity

    end

    def apply_discount 
    if discount == 0
        "There is no discount to apply."
    else
        @total = @total - @total * @discount / 100
        "After the discount, the total comes to $#{@total}."
    end 
    end

    def items  
        @items_array.map {|i| 
            names = [] 
            i[:quantity].times do names << i[:title] end
             names lea
            }.flatten
    end

    def void_last_transaction
            @total -= @items_array[-1][:price] * @items_array[-1][:quantity]
            @items_array.pop
    end

end


