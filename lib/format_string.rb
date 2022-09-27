module FormatString
    def self.upper str
        str.body = "This text was transformed to upper case by a mixin module but only for response, whether you refresh, you will see original text -> #{str.body.upcase} "  
        str
    end
end