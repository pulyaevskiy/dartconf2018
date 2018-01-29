// Note: if demo was compiled with dart2js and you renamed source file location
// from node/demo_exports.dart to web/demo_exports.dart => don't forget
// to adjust the path in require call below accordingly.
const app = require("./build/node/demo_exports.dart.js");
console.log(Object.keys(app));
console.log('First DartConf (not summit!) year is', app.dartconf);
