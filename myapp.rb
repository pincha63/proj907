require "roda"
require "slim"

class Myapp < Roda
    plugin :static, ["/images", "/css", "/js"]
    plugin :render, engine: 'slim'
    plugin :head
  
    route do |r|
      r.root do
        @title = "... and note: This variable is visible by the page called by view/render"
        # view("homepage") # this view here uses the render plugin
        render("homepage") # this view here uses the render plugin, not using layout
      end
    end
  end