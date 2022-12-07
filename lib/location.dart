// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:location/location.dart';
// // import 'dart:async';

// // class MyWidget extends StatefulWidget {
// //   const MyWidget({Key? key}) : super(key: key);

// //   @override
// //   State<MyWidget> createState() => _MyWidgetState();
// // }

// // class _MyWidgetState extends State<MyWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return FutureBuilder(builder: (BuildContext (context, AsyncSnapshot<LocationData>snapshot) {
// //       if(snapshot.hasData || snapshot.data!.longitude == null) return Scaffold(body: Center(child: CircularProgressIndicator(),),);
// //       String url = "http://${MY_URL}/kaka/${snapshot.data.latitude.toString()}/${snapshot.data.longitude.toString()}";
// //       return WebviewScaffod
// //     }));
// // }

// // Location location = new Location();

// // late bool _serviceEnabled;
// // late PermissionStatus _permissionGranted;
// // late LocationData _locationData;

// // Future<LocationData> getLatLong() async {
// //   _serviceEnabled = await location.serviceEnabled();
// //   if (!_serviceEnabled) {
// //     _serviceEnabled = await location.requestService();
// //     if (!_serviceEnabled) return _locationData;
// //   }

// //   _permissionGranted = await location.hasPermission();
// //   if (_permissionGranted == PermissionStatus.denied) {
// //     _permissionGranted = await location.requestPermission();
// //     if (_permissionGranted != PermissionStatus.granted) return _locationData;
// //   }
// //   return _locationData = await location.getLocation();
// // }
// //   // await location.getLocation().then((res) {
// //   //   setState(() {
// //   //     lat = res.latitude;
// //   //     lng = res.longitude;
// //   //   });
// //   // });
// // }

// import 'package:flutter/material.dart';
// import 'package:kakaomap_webview/kakaomap_webview.dart';
// import 'package:location/location.dart';
// import 'package:my_restaurant_list/location.dart';

// const String kakaoMapKey = '4d15b7e775a524c698b9840b2c8aa63e';

// class Test extends StatefulWidget {
//   Test({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   double lat = 0;
//   late double lng = 0;
//   Location location = new Location();

//   late bool _serviceEnabled;
//   late PermissionStatus _permissionGranted;

//   MyLocationTest() async {
//     // late LocationData _locationData;

//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }

//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//     await location.getLocation().then((res) {
//       setState(() {
//         lat = res.latitude!;
//         lng = res.longitude!;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(title: Text('나만의 맛집 리스트 만들기')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           // KakaoMapView
//           KakaoMapView(
//               width: size.width,
//               height: 400,
//               kakaoMapKey: kakaoMapKey,
//               lat: 33.450701,
//               lng: 126.570667,
//               customScript: 
//     var markers = [];

//     function addMarker(position) {

//       var marker = new kakao.maps.Marker({position: position});

//       marker.setMap(map);

//       markers.push(marker);
//     }

//     for(var i = 0 ; i < 3 ; i++){
//       addMarker(new kakao.maps.LatLng(33.450701 + 0.0003 * i, 126.570667 + 0.0003 * i));

//       kakao.maps.event.addListener(markers[i], 'click', (function(i) {
//         return function(){
//           onTapMarker.postMessage('marker ' + i + ' is tapped');
//         };
//       })(i));
//     }

// 		  var zoomControl = new kakao.maps.ZoomControl();
//       map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

//       var mapTypeControl = new kakao.maps.MapTypeControl();
//       map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
              
//               onTapMarker: (message) {
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(SnackBar(content: Text(message.message)));
//               })
//         ],
//       ),
//     );
//   }
// }





// // class KakaoMapTest extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     Size size = MediaQuery.of(context).size;
// //     return Scaffold(
// //       appBar: AppBar(title: Text('나만의 맛집 리스트 만들기')),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: [
// //           // KakaoMapView
// //           KakaoMapView(
// //               width: size.width,
// //               height: 600,
// //               kakaoMapKey: kakaoMapKey,
// //               lat: 33.450701,
// //               lng: 126.570667,
// //               showMapTypeControl: true,
// //               showZoomControl: true,
// //               // markerImageURL:
// //               //     'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
// //               onTapMarker: (message) async {
// //                 ScaffoldMessenger.of(context)
// //                     .showSnackBar(SnackBar(content: Text('Marker is clicked')));

// //                 //await _openKakaoMapScreen(context);
// //               }),
// //           ElevatedButton(
// //             child: Text('Kakao map screen'),
// //             // onPressed: () async {
// //             //   await _openKakaoMapScreen(context);
// //             // },
// //             onPressed: () {
// //               MyLocation();
// //             },
// //           )
// //         ],
// //       ),
// //     );
// //   }

//   // kakao map 지도 검색으로 이동
//   // Future<void> _openKakaoMapScreen(BuildContext context) async {
//   //   KakaoMapUtil util = KakaoMapUtil();

//   //   String url =
//   //       await util.getMapScreenURL(33.450701, 126.570667, name: 'Kakao 본사');

//   //   Navigator.push(
//   //       context, MaterialPageRoute(builder: (_) => KakaoMapScreen(url: url)));
//   // }
// // }
