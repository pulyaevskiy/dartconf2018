import 'dart:async';
import 'dart:convert';

import 'package:node_io/node_io.dart';

Future main() async {
  final HttpServer server = await HttpServer.bind(host, port);
  print('Server started on port $port.');
  print('Click me: http://${host}:${port}/click-me');

  server.listen((HttpRequest request) async {
    try {
      print('${request.method} ${request.uri}');
      request.response.headers.contentType = ContentType.JSON;
      request.response.write(JSON.encode({
        'requestedUri': '${request.uri}',
      }));
    } finally {
      request.response.close();
    }
  });
}

const String host = '127.0.0.1';
const int port = 8080;
