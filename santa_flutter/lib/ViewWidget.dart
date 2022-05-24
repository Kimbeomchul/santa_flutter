import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

import 'Developer.dart';

class ViewWidget extends StatefulWidget {

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<ViewWidget> {
    var serverURL = "x";

    bool isLoading = true;
    late WebViewController _webViewController;
    late String _url;

  // Android Keyboard 내리깅~
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return WillPopScope(
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              WebView(
                initialUrl: serverURL,
                onWebViewCreated: (WebViewController webViewController) {
                  _webViewController = webViewController;
                },
                javascriptMode: JavascriptMode.unrestricted, // 자바스크립트 온
                gestureNavigationEnabled: true, // 제스쳐
                javascriptChannels: <JavascriptChannel>{ // 양방향통
                  _baseJavascript(context),
                },
                onPageStarted: (url){

                  setState(() {
                    isLoading = true;
                  });
                },
                onPageFinished: (url) {
                  _url = url;
                  // 권한 받아오기
                  if(url == (serverURL + "/")){
                    getPermission();
                  }

                  print("page loaded = " + url);

                  setState(() {
                    isLoading = false;
                  });
                },

              ),
              isLoading ? Center( child: CircularProgressIndicator(),)
                  : Stack(),
            ],
          ),
      ),
      ),

      onWillPop: () {
        var future = _webViewController.canGoBack();
        future.then((canGoBack) {
          if (canGoBack) {
            _webViewController.goBack();
          } else {
            if (Platform.isAndroid) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(
                        title: Text('정말 산타를 종료하시겠어요?'),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('취소'),
                          ),
                          FlatButton(
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            child: Text('종료'),
                          ),
                        ],
                      ));
            }
          }
        });
        return Future.value(false);
      },
    );
  }


    JavascriptChannel _baseJavascript(BuildContext context) {
      return JavascriptChannel(
          name: 'Print',
          onMessageReceived: (JavascriptMessage message) async {
            if(message.message == "developer") { // 개발자 화면으로 이동시킴

              Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutUs()),);

            }else if(message.message == "location"){ // 위치정보 받아오기

              Position position =  await _getGeoLocationPosition();

              var locationData = 'flutterLocation("'+position.latitude.toString()+'","'+position.longitude.toString()+'")';
              _webViewController.evaluateJavascript(locationData);

          }else{
              Fluttertoast.showToast(
                  msg:  message.message, // 토스트 메시지 내용
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.grey, // 배경색 빨강색
                  fontSize: 14.0,
                  textColor: Colors.white, // 폰트 하얀색
                  toastLength: Toast.LENGTH_SHORT // 토스트 메시지 지속시간 짧게
              );
            }
          });
    }



    getPermission() async{
      Map<Permission, PermissionStatus> statues =await [Permission.storage , Permission.locationWhenInUse].request();
      if (statues.values.every((element) => element.isGranted)) {
        print("Permission Success");
        return 'success';
      }
      print("Permission Fail");
      return 'fail';
    }




    // 위치 불러오기
    _getGeoLocationPosition() async {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return position;
    }


}



