import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); // 방향전환 세로고정
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Design.png'),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.black.withOpacity(.3)
                              ]
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[Text("Santa", style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)
                            ,),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                Text("등산 정보제공/공유 커뮤니티", style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                                SizedBox(width: 50,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("산타는 등산에 관한 정보제공 및 공유를 하는 커뮤니티 형식의 애플리케이션입니다. 원하시는 기능이나 정보를 아래에 있는 개발자에게 전달해 주시면 빠르게 적용하도록 하겠습니다.",
                        style: TextStyle(color: Colors.grey, height: 1.4),),
                        SizedBox(height: 40,),
                        Text("Update", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text("June, 20th 2022,  Version 0.0.5", style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 20,),
                        Text("Developer", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4,),

                        Row(
                          children: [
                            Text("김범철 ", style: TextStyle(color: Colors.grey,fontSize: 14),
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.instagram,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://www.instagram.com/m_ozz_i/', forceWebView: false, forceSafariVC: false); //범철 인스타
                                }
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.github,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://github.com/Kimbeomchul', forceWebView: true, forceSafariVC: true);//범철 깃허브이동
                                }
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("Contributors", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4,),

                        Row(
                          children: [
                            Text("홍두표 ", style: TextStyle(color: Colors.grey,fontSize: 14),
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.instagram,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://www.instagram.com/dupyo_91/', forceWebView: false, forceSafariVC: false); //두깨 인스타
                                }
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.github,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://github.com/hdp0545', forceWebView: true, forceSafariVC: true);//두깨 깃허브이동
                                }
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("Others", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            Text("김지향 - Design", style: TextStyle(color: Colors.grey,fontSize: 14),
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.instagram,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://www.instagram.com/ji_hyang_o', forceWebView: false, forceSafariVC: false);
                                }
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("전주환 - Tester", style: TextStyle(color: Colors.grey,fontSize: 14),
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.instagram,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://www.instagram.com/joohwanjeon', forceWebView: false, forceSafariVC: false);
                                }
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.github,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://github.com/joohwan812', forceWebView: true, forceSafariVC: true);
                                }
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("박지은 - Tester", style: TextStyle(color: Colors.grey,fontSize: 14),
                            ),
                            IconButton(
                              // Use the MdiIcons class for the IconData
                                icon: new Icon(MdiIcons.instagram,color: Colors.grey,),
                                onPressed: () {
                                  launch('https://www.instagram.com/zxcjun30', forceWebView: false, forceSafariVC: false);
                                }
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("Used", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text("Frontend : Thymeleaf , Flutter , Vuejs(chat)", style: TextStyle(color: Colors.grey),
                        ),
                        Text("Backend : Springboot", style: TextStyle(color: Colors.grey),
                        ),
                        Text("Database : Mysql , AWS RDS , AWS S3", style: TextStyle(color: Colors.grey),
                        ),
                        Text("Server : AWS EC2", style: TextStyle(color: Colors.grey),
                        ),
                        Text("Version : v0.0.5", style: TextStyle(color: Colors.grey),
                        ),
                        Text("Others : Docker , Jenkins , Git ,Figma", style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 120,)
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          // Positioned.fill(
          //   bottom: 50,
          //   child: Container(
          //     child: Align(
          //       alignment: Alignment.bottomCenter,
          //       child:
          //       Container(
          //         margin: EdgeInsets.symmetric(horizontal: 30),
          //         height: 50,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(50),
          //             color: Colors.cyan[600]
          //         ),
          //         child:
          //         Align(
          //           child: GestureDetector(
          //             onTap: () => {
          //               // 결제시스템 구현하기
          //             },
          //             child: Text("후원하기", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}