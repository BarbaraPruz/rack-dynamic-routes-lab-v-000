class Application

  @@items = []
 
  def call(env)
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
          item_name = req.path.split("/items/").last #turn /songs/Sorry into Sorry
          item = @@items.find{|s| s.name == item_name}
     
          resp.write item.price
          end

        else
          resp.write "Path Not Found"
          resp.status = 404
        end

        resp.finish
  end
end
