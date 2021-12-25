require "roda"

class Myapp < Roda
  route do |r|
    r.root do
      "Hello!"
    end
  end
end