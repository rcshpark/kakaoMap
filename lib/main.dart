import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:my_restaurant_list/location.dart';
import 'package:my_restaurant_list/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KakaoMapScreen(),
    );
  }
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:kakaomap_webview/kakaomap_webview.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// const String kakaoMapKey = '4d15b7e775a524c698b9840b2c8aa63e';

// void main() {
//   runApp(MaterialApp(home: KakaoMapTest()));
// }

// class KakaoMapTest extends StatefulWidget {
//   @override
//   State<KakaoMapTest> createState() => _KakaoMapTestState();
// }

// class _KakaoMapTestState extends State<KakaoMapTest> {
//   late WebViewController _mapController;

//   final double _lat = 37.610513;
//   final double _lng = 127.171222;

//   // final double _lat = 33.450701;
//   // final double _lng = 126.570667;

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(title: Text('Kakao map webview test')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           KakaoMapView(
//             width: size.width,
//             height: 400,
//             kakaoMapKey: kakaoMapKey,
//             lat: _lat,
//             lng: _lng,
//             showMapTypeControl: true,
//             showZoomControl: true,
//             draggableMarker: true,
//             mapType: MapType.BICYCLE,
//             mapController: (controller) {
//               _mapController = controller;
//             },
//             customScript: '''
//     var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
//     mapOption = { 
//         center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
//         level: 3 // 지도의 확대 레벨
//     };

// var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// // 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
// kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
//     // 클릭한 위치에 마커를 표시합니다 
//     addMarker(mouseEvent.latLng);             
// });

// // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
// var markers = [];

// // 마커 하나를 지도위에 표시합니다 
// addMarker(new kakao.maps.LatLng(33.450701, 126.570667));

// // 마커를 생성하고 지도위에 표시하는 함수입니다
// function addMarker(position) {
    
//     // 마커를 생성합니다
//     var marker = new kakao.maps.Marker({
//         position: position
//     });

//     // 마커가 지도 위에 표시되도록 설정합니다
//     marker.setMap(map);
    
//     // 생성된 마커를 배열에 추가합니다
//     markers.push(marker);
// }

// // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
// function setMarkers(map) {
//     for (var i = 0; i < markers.length; i++) {
//         markers[i].setMap(map);
//     }            
// }

// // "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
// function showMarkers() {
//     setMarkers(map)    
// }

// // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
// function hideMarkers() {
//     setMarkers(null);    
// }
//               ''',

//             // polyline: KakaoFigure(
//             //   path: [
//             //     KakaoLatLng(lat: 33.45080604081833, lng: 126.56900858718982),
//             //     KakaoLatLng(lat: 33.450766588506054, lng: 126.57263147947938),
//             //     KakaoLatLng(lat: 33.45162008091554, lng: 126.5713226693152)
//             //   ],
//             //   strokeColor: Colors.blue,
//             //   strokeWeight: 2.5,
//             //   strokeColorOpacity: 0.9,
//             // ),
//             // polygon: KakaoFigure(
//             //   path: [
//             //     KakaoLatLng(lat: 33.45086654081833, lng: 126.56906858718982),
//             //     KakaoLatLng(lat: 33.45010890948828, lng: 126.56898629127468),
//             //     KakaoLatLng(lat: 33.44979857909499, lng: 126.57049357211622),
//             //     KakaoLatLng(lat: 33.450137483918496, lng: 126.57202991943016),
//             //     KakaoLatLng(lat: 33.450706188506054, lng: 126.57223147947938),
//             //     KakaoLatLng(lat: 33.45164068091554, lng: 126.5713126693152)
//             //   ],
//             //   polygonColor: Colors.red,
//             //   polygonColorOpacity: 0.3,
//             //   strokeColor: Colors.deepOrange,
//             //   strokeWeight: 2.5,
//             //   strokeColorOpacity: 0.9,
//             //   strokeStyle: StrokeStyle.shortdashdot,
//             // ),
//             // overlayText: '카카오!',
// //             customOverlayStyle: '''<style>
// //               .customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
// // .customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
// // .customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
// // .customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
// // .customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
// //               </style>''',
// //             customOverlay: '''
// // const content = '<div class="customoverlay">' +
// //     '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
// //     '    <span class="title">카카오!</span>' +
// //     '  </a>' +
// //     '</div>';

// // const position = new kakao.maps.LatLng($_lat, $_lng);

// // const customOverlay = new kakao.maps.CustomOverlay({
// //     map: map,
// //     position: position,
// //     content: content,
// //     yAnchor: 1
// // });
// //               ''',
//             // markerImageURL:
//             //     'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
//             onTapMarker: (message) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text(message.message)));
//             },
//             zoomChanged: (message) {
//               debugPrint('[zoom] ${message.message}');
//             },
//             cameraIdle: (message) {
//               KakaoLatLng latLng =
//                   KakaoLatLng.fromJson(jsonDecode(message.message));
//               debugPrint('[idle] ${latLng.lat}, ${latLng.lng}');
//             },
//             boundaryUpdate: (message) {
//               KakaoBoundary boundary =
//                   KakaoBoundary.fromJson(jsonDecode(message.message));
//               debugPrint(
//                   '[boundary] ne : ${boundary.neLat}, ${boundary.neLng}, sw : ${boundary.swLat}, ${boundary.swLng}');
//             },
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               // InkWell(
//               // 줌인
//               //   onTap: () {
//               //     _mapController.runJavascript(
//               //         'map.setLevel(map.getLevel() - 1, {animate: true})');
//               //   },
//               //   child: CircleAvatar(
//               //     backgroundColor: Colors.red,
//               //     child: const Icon(
//               //       Icons.remove,
//               //       color: Colors.white,
//               //     ),
//               //   ),
//               // ),
//               // InkWell(
//               // 줌아웃
//               //   onTap: () {
//               //     _mapController.runJavascript(
//               //         'map.setLevel(map.getLevel() + 1, {animate: true})');
//               //   },
//               //   child: CircleAvatar(
//               //     backgroundColor: Colors.blue,
//               //     child: const Icon(
//               //       Icons.add,
//               //       color: Colors.white,
//               //     ),
//               //   ),
//               // )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               //         InkWell(
//               //           //현재 lat,lng 값 출력
//               //           onTap: () {
//               //             _mapController.runJavascript('''
//               // addMarker(new kakao.maps.LatLng($_lat + 0.0003, $_lng + 0.0003));

//               // function addMarker(position) {
//               //   let testMarker = new kakao.maps.Marker({position: position});

//               //   testMarker.setMap(map);
//               // }
//               //                 ''');
//               //           },
//               //           child: CircleAvatar(
//               //             backgroundColor: Colors.amber,
//               //             child: const Icon(
//               //               Icons.pin_drop,
//               //               color: Colors.white,
//               //             ),
//               //           ),
//               //         ),
//               // InkWell(
//               //   onTap: () async {
//               //     await _mapController.reload();
//               //     debugPrint('[refresh] done');
//               //   },
//               //   child: CircleAvatar(
//               //     backgroundColor: Colors.green,
//               //     child: const Icon(
//               //       Icons.refresh,
//               //       color: Colors.white,
//               //     ),
//               //   ),
//               // )
//             ],
//           ),
//           ElevatedButton(
//               child: Text('Kakao map screen'),
//               onPressed: () async {
//                 // await _openKakaoMapScreen(context);
//               })
//         ],
//       ),
//     );
//   }

// // // 카카오 맵 어플 열기?
// //   Future<void> _openKakaoMapScreen(BuildContext context) async {
// //     KakaoMapUtil util = KakaoMapUtil();

// //     // String url = await util.getResolvedLink(
// //     //     util.getKakaoMapURL(37.402056, 127.108212, name: 'Kakao 본사'));

// //     /// This is short form of the above comment
// //     String url =
// //         await util.getMapScreenURL(37.402056, 127.108212, name: 'Kakao 본사');

// //     debugPrint('url : $url');

// //     // Navigator.push(
// //     //     context, MaterialPageRoute(builder: (_) => KakaoMapScreen(url: url)));
// //   }

// //   Widget _testingCustomScript(
// //       {required Size size, required BuildContext context}) {
// //     return KakaoMapView(
// //         width: size.width,
// //         height: 400,
// //         kakaoMapKey: kakaoMapKey,
// //         lat: 33.450701,
// //         lng: 126.570667,
// //         customScript: '''
// //     var mapContainer = document.getElementById('map'), // 지도를 표시할 div
// //     mapOption = {
// //         center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
// //         level: 3 // 지도의 확대 레벨
// //     };

// // var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// // // 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
// // kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
// //     // 클릭한 위치에 마커를 표시합니다
// //     addMarker(mouseEvent.latLng);
// // });

// // // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
// // var markers = [];

// // // 마커 하나를 지도위에 표시합니다
// // addMarker(new kakao.maps.LatLng(33.450701, 126.570667));

// // // 마커를 생성하고 지도위에 표시하는 함수입니다
// // function addMarker(position) {

// //     // 마커를 생성합니다
// //     var marker = new kakao.maps.Marker({
// //         position: position
// //     });

// //     // 마커가 지도 위에 표시되도록 설정합니다
// //     marker.setMap(map);

// //     // 생성된 마커를 배열에 추가합니다
// //     markers.push(marker);
// // }

// // // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
// // function setMarkers(map) {
// //     for (var i = 0; i < markers.length; i++) {
// //         markers[i].setMap(map);
// //     }
// // }

// // // "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
// // function showMarkers() {
// //     setMarkers(map)
// // }

// // // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
// // function hideMarkers() {
// //     setMarkers(null);
// // }
// //               ''',
// //         onTapMarker: (message) {
// //           ScaffoldMessenger.of(context)
// //               .showSnackBar(SnackBar(content: Text(message.message)));
// //         });
// //   }
// }
