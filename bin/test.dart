// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;

main() async {
  // var res = await http.get(Uri.parse("http://127.0.0.1:8000/admin"));
  var res = await http.post(Uri.parse("http://127.0.0.1:8000/admin"),
    body: {
      'username': 'adm1',
      'password': '12345'
    }  
  );

  print(res.body);
}
