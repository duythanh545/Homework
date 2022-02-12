import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 6 demo'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Image.network(
                            "https://codefresher.vn/wp-content/uploads/2022/01/banner_2022_flutter.jpg"),
                      ),
                      Flexible(
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Lập trình Flutter',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                    textAlign: TextAlign.center),
                                Text(
                                  'Thực chiến dự án app mobile 2022',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                          margin: const EdgeInsets.only(left: 10),
                        ),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                ),
              ),
              Container(
                color: Colors.green,
                height: 2,
              ),
              Flexible(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Lập trình Android',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                    textAlign: TextAlign.center),
                                Text(
                                  'Java + Kotlin',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                          margin: const EdgeInsets.only(left: 10),
                        ),
                      ),
                      Flexible(
                        child: Image.network(
                            "https://codefresher.vn/wp-content/uploads/2022/01/banner_2022_android.jpg"),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                ),
              ),
              Container(
                color: Colors.green,
                height: 2,
              ),
              Flexible(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Image.network(
                            "https://codefresher.vn/wp-content/uploads/2021/06/banner-Java-core-03.png"),
                      ),
                      Flexible(
                        child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Lập trình Java cơ bản',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                    textAlign: TextAlign.center),
                                Text(
                                  'Cho người mới bắt đầu',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                          margin: const EdgeInsets.only(left: 10),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                ),
              ),
            ],
          ),
          margin: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
