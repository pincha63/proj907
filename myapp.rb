require "roda"
require "slim"

class Myapp < Roda
    plugin :static, ["/images", "/css", "/js"]
    plugin :render, engine: 'slim'
    plugin :head
    @layout_str = "Not the one I intended"
    route do |r|
        @layout_str = "ALSO, not the one I intended"
        r.root do
            @title = "App in Roda"
            @layout_str = "Layout String"
            @homepage_str = "Homepage String"
            p view("homepage") # this here uses the render plugin
<<<<<<< HEAD
            ### render("homepage") # this here uses the render plugin, notbut does not use the layout
=======
>>>>>>> 274dd3f3e3420a7e78d0cfd647e858426dd72a39
        end
        r.get "about" do
            @title = "App in Roda - - about"
            @about_str = "About String"
            p view("about")
        end
        r.get "contact" do
            @title = "App in Roda - - contact"
            @contact_str = "Contact String"
            p view("contact")
        end
    end
end
