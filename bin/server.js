var fs = require('fs'),
    http = require('http'),
    path = require('path');

var port = process.argv[2] || 8080;

http.createServer(function(req, res) {

    var file = path.normalize('.' + req.url);

    fs.exists(file, function (exists) {

        if(exists) {
            var rs;  

            fs.stat(file, function(err, stats) {
            
              if(stats.isFile()) {
                rs = fs.createReadStream(file);     
                res.writeHead(200);
                rs.pipe(res);
              } else {
                  res.writeHead(404);
                  res.end('naw, thats some bullshit, file not found');
              }
                
            });
        } else {
            res.writeHead(404);
            res.end('Requested file not found');
        }
    });

}).listen(port, function() {
    console.log('\r\nnode server started on port ' + port + '...');
});
