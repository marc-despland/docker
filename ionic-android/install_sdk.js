var cp = require('child_process');

var data_line = '';
//./android -s update sdk --no-ui
/*var childProcess = cp.exec('vmstat -an 1', (err, stdout, stderr) => {
  if (err) {
    console.log('Error : ${err}\n');
    return;
  }
  data_line += stdout;
  console.log(`stdout : ${stdout}`);
  console.log(`data : ${data_line}`);
  console.log('stderr : ${stderr}');
  if (data_line[data_line.length-1] == '\n') {
    if (data_line.indexOf('[y/n]:')>0) {
      childProcess.stdin.write('y\n');
    }
    console.log(data_line);
    data_line = '';
  }
});*/

/*childProcess.stdout.setEncoding('utf8')

var k = 0;
*/
var childProcess = cp.spawn('./android',['-s', 'update', 'sdk', '--no-ui']);
childProcess.stdout.on("data", function(data) {
  data_line += data;
  console.log(`${data}`);
  if (data.indexOf('[y/n]:')>0) {
    console.log('Request answer');
    childProcess.stdin.write('y\n');
  }
});
