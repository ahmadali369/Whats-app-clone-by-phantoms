/// Api Call with Dio ==========================================================
///
/// add --> dio
/// add --> http
/// import --> import 'package:http/http.dart' as http;
//  Future<void> _getDataFromServer() async {
//     try {
//       var response = await Dio()
//           .get('http://universities.hipolabs.com/search?country=United+States');
//       List<ApiData> data = [];
//       for (var e in response.data) {
//         data.add(ApiData.fromJson(e));
//       }
//
//       setState(() {
//         universityData = data;
//       });
//     } catch (e) {
//       print(e);
//     }
//   }