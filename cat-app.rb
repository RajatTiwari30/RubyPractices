class Object
    def self.const_missing(c)
        #overriding
        puts "#{c} is missing, Loading it dynamically"
        require_relative "./cat"
        #Cat
        klass=const_get(c)
        return klass if klass
    end
end

puffy_cat=Cat.new
puffy_cat.talk