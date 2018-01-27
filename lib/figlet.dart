/// Example for importing an NPM package.
@JS()
library dartconf2018.figlet;

import 'package:js/js.dart';
import 'package:node/node.dart';

Figlet get figlet => require('figlet');

@JS()
@anonymous
abstract class Figlet {
  external String textSync(String data, [options]);
}
