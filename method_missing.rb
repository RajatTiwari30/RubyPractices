class Numeric
    @@currencies={yen: 1.55, euro: 0.013, usd:0.14}
    def method_missing(method_name,*args, &block)
        p self
        puts "#{method_name} not found"

        if @@currencies.has_key?(method_name)
            self/@@currencies[method_name]
        else
            super
        end
        end
    end
    p 100.usd
    p 200.euro