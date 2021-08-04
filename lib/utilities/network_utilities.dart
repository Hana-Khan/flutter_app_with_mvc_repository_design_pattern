import 'package:http/http.dart' as http;
class Network{

  var _url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  fetchtUsersData() async {
    return await http.get(
      _url,
    );
  }
}
