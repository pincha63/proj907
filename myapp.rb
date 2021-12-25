require "roda"
require "slim"

class Myapp < Roda
    plugin :static, ["/images", "/css", "/js"]
    plugin :render, engine: 'slim'
    plugin :head
  
    route do |r|
        r.root do
            ### @title = "... and note: This variable is visible by the page called by view/render"
            @layout_str = "Layout String"
            @homepage_str = "Homepage String"
            view("homepage") # this here uses the render plugin
            ### render("homepage") # this here uses the render plugin, notbut does not use the layout
        end

        r.get "about" do
            view("about")
        end
        
        r.get "contact" do
            view("contact")
        end

    end
end