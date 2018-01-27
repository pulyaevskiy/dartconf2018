import 'dart:async';

import 'package:node_io/node_io.dart';
import 'package:dartconf2018/figlet.dart'; // NPM package bindings and require()

Future main() async {
  final HttpServer server = await HttpServer.bind(host, port);
  print('Server started on port $port.');
  print('Click me: http://${host}:${port}/click-me');

  server.listen((HttpRequest request) async {
    try {
      print('${request.method} ${request.uri}');
      request.response.headers.contentType = ContentType.TEXT;
      request.response.write(figlet.textSync('DartConf 2018'));
    } finally {
      request.response.close();
    }
  });
}

const String host = '127.0.0.1';
const int port = 8080;
