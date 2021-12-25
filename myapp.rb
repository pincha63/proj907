require "roda"
require "slim"

class Myapp < Roda
    plugin :static, ["/images", "/css", "/js"]
    plugin :render, engine: 'slim'
    plugin :head
  
    route do |r|
        r.root do
            @title = "App in Roda"
            @layout_str = "Layout String"
            @homepage_str = "Homepage String"
            view("homepage") # this here uses the render plugin
            ### render("homepage") # this here uses the render plugin, notbut does not use the layout
        end

        r.get "about" do
            @title = "App in Roda - - about"
            view("about")
        end
        
        r.get "contact" do
            @title = "App in Roda - - contact"
            view("contact")
        end

    end
end