import 'package:node_interop/node.dart';

/// When compiled this app should export "dartconf" property with value "2018".
///
/// Use `test_exports.js` in the root directory to test this.
///
/// Note: if `main` function is marked as `async` then setExport call is delayed
/// and code in test_exports.js actually fails.
///
/// The [setExport] function is declared in `node_interop/node` package. See
/// documentation there for more details.
void main() {
  setExport('dartconf', '2018');
  print('Exported stuff');
}
