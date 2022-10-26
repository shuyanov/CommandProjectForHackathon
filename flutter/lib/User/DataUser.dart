import 'package:flutter/material.dart';

import '../Widget/WidgetPage.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserCase"),
        actions: <Widget>[
          IconButton(
              onPressed: (){ // Уведомления
                // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("You tap buttom"))); выводи сообщение на экрав в нижнем баре
                Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context){
                      return Scaffold(
                        appBar: AppBar(
                        ),
                        body: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("data", style: TextStyle(fontSize: 36),),
                            ],
                          ),
                        ),
                      );
                    }
                ));
              },
              icon: const Icon(Icons.add_alert))
        ],
      ),
      body:  Container(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            MyStateless(),
            UserText(text: "Shuanov Max")
          ],
        ),
          ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', ),
        BottomNavigationBarItem(icon: Icon(Icons.lens_outlined), label: 'lens'),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'User'),
      ]),
    );
  }
}