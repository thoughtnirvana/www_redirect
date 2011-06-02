http = require 'http'

server = http.createServer (req, res) ->
    console.dir req.headers
    console.log req.headers.host
    res.writeHead 301, {"Location": "http://www.#{req.headers.host}"}
    res.end()
server.listen 80 
