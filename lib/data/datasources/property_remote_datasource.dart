import 'dart:convert';

import 'package:skawa/data/models/property.dart';

abstract class PropertyRemoteDataSource {
  Future<Property?> getProperty({required int id});
}

class PropertyRemoteDataSourceImpl implements PropertyRemoteDataSource {
  @override
  Future<Property?> getProperty({required int id}) async {
    // final response =  await http.get(//API_URL + '/properties/id')
    // check response status Code
    // parse from response.body
    // await Future.delayed(const Duration(milliseconds: 500));
    String data = """
  {
   "isNotificationEnabled":true,
   "privateAdvertisersOnly":false,
   "filterOutSuspiciousItems":true,
   "onlyPolisWithPictures":true,
   "nameSpace":"hu",
   "locations":[
      {
         "accessTokens":[
            "v1-NGjMb89DhXVjdFH2qe2Y9s9nivaCNaDNCDmkvsdRhok"
         ],
         "adminLevels":{
            "6":"Nógrád megye",
            "8":"Zabar"
         },
         "nameSpace":"hu",
         "ids":[
            "ChIJG2dAGsJwQEcRAHgeDCnEAAQ"
         ]
      },
      {
         "accessTokens":[
            "v1-lv3CMtHjZyVTRCqNyCEmHsakmSAMa0bpsxi3Wr1QjqE"
         ],
         "adminLevels":{
            "6":"Veszprém",
            "8":"Csesznek"
         },
         "nameSpace":"hu",
         "ids":[
            "ChIJTZZvGMgqakcRQGAeDCnEAAQ"
         ]
      }
   ],
   "name":"Sus",
   "assignmentType":"FOR_SALE",
   "estateTypes":[
      "HOUSE"
   ],
   "createTime":1658740743732,
   "usesUmbrella":true,
   "id":null,
   "minPrice":69000000,
   "maxPrice":420000000,
   "minFloorArea":80,
   "maxFloorArea":null,
   "minUnitPrice":null,
   "maxUnitPrice":null
}
    """;
    final jsonData = json.decode(data) as Map<String, dynamic>;

    return Future.value(Property.fromJson(jsonData));
  }
}
