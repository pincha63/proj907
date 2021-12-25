require "roda"

class Myapp < Roda # called from config.ru
  route do |r|
    r.root do
      u = "Pincharrata"
        "Hello #{u}!"
    end
  end
end