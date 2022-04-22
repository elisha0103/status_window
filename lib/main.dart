import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '짱구',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("신상정보"),
            backgroundColor: Colors.amber[800],
            centerTitle: true,
            elevation: 0.0),
        backgroundColor: Colors.amber[700], // 전체 색 변경
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0), // 픽셀 기준 위치조정
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start, // 가로 배열 (왼쪽, 중앙, 오른쪽)
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/jj1.png'), // 이미지 등록 위젯
                    // 이미지 파일 넣기 위해서 디렉토리 만든 후 안에 이미지 파일 넣기
                    // pubspec.yaml 내 assets 검색 후 주석처리 해제 -> 이미지 파일 경로 입력
                    radius: 60.0, // 원 크기
                  ),
                ),
                Divider(
                  height: 60.0, // 선의 위 아래 간격 합친 수 - 선 위 30, 아래 30
                  color: Colors.grey[850],
                  thickness: 0.5,  // 선의 두께
                  endIndent: 30.0, // 선의 오른쪽 끝 간격
                ),
                Text('NAME', // Text에 관한 설정 (문자열, 글자속성 등)
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0, // 글자 간격
                    )),
                SizedBox(
                  // SizeBox는 위젯과 위젯 사이에 간격을 대체해줌 (세로, 가로 두가지)
                  height: 10.0,
                ),
                Text(
                  '신짱구',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0, // 글자 사이즈
                      fontWeight: FontWeight.bold // 글자 두께
                  ),
                ),
                SizedBox(
                  // SizeBox는 위젯과 위젯 사이에 간격을 대체해줌 (세로, 가로 두가지)
                  height: 30.0,
                ),
                Text('Age', // Text에 관한 설정 (문자열, 글자속성 등)
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0, // 글자 간격
                    )),
                SizedBox(
                  // SizeBox는 위젯과 위젯 사이에 간격을 대체해줌 (세로, 가로 두가지)
                  height: 10.0,
                ),
                Text('5',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 28.0, // 글자 사이즈
                        fontWeight: FontWeight.bold // 글자 두께
                    )),
                SizedBox(
                  // SizeBox는 위젯과 위젯 사이에 간격을 대체해줌 (세로, 가로 두가지)
                  height: 30.0,
                ),
                Text('가족', // Text에 관한 설정 (문자열, 글자속성 등)
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0, // 글자 간격
                    )),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0, // 가로열에 사용하는 SizedBox(width)
                    ),
                    Text('부 : 신형만',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0, // 가로열에 사용하는 SizedBox(width)
                    ),
                    Text('모 : 봉미선',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0, // 가로열에 사용하는 SizedBox(width)
                    ),
                    Text('형제 : 신짱아',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0, // 가로열에 사용하는 SizedBox(width)
                    ),
                    Text('반려견 : 흰둥이',
                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
                  ],
                ),
                Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/jj2.png'),
                      radius: 40.0,
                    )
                )
              ],
            )));
  }
}
