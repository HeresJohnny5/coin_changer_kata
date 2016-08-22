def generate_currency(num)
    currency = {}
    coins = [[:Quarter, 0.25],[:Dime,0.10],[:Nickel,0.05],[:Penny,0.01]]

    num = num.to_f.round(2)
    
    coins.each do |x|
        if num >= x[1]
            numcoins = (num / x[1]).to_i
            currency[x[0]] = numcoins
            num = (num - (numcoins * x[1])).round(2)
        end
    end
    currency
end