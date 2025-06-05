
// class Network {
//   static Future<List<User>> fetchData() async {
//     // Fetch data
//     var response = await Dio().get(Api.url);
//     print("obji0000000000000000000ect");

//     // Convert to List<User>
//     List<User> users = [
//       for (var e in (response.data as List)) User.fromJson(e),
//     ];

//     print("Parsed Users: $users");
//     return users;
//   }
// }
