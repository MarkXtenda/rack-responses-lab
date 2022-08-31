class Application 
    attr_accessor :timy
    def initialize(timy: Time.new)
        @timy = timy
    end
    def call(env)
        resp = Rack::Response.new
        time = self.timy
        time_split = "#{time}\n".split(" ")[1]
        time_hours = "#{time_split}".split("")
        if (time_hours[0] == "1" && time_hours[1].to_i  < 2) || time_hours[0].to_i != 1
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end