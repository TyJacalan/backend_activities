class Human
    def speak
        puts "...starts to speak."
    end

    def breathe
        puts "...is breathing."
    end
end

class Adult
    def speak
        super
        puts "Hello!"
    end

    def run
        puts "Starts to run..."
    end
end

class Baby
    def speak
        super
        "Babada!"
    end
end