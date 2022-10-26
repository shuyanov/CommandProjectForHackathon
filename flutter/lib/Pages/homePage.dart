import 'package:command_flutter/Pages/MyStyle.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  PageController pageController = PageController();

  void onTappen(int index){
    setState(() {
      _selectIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'),
        actions: <Widget>[
          IconButton(
              onPressed: (){ // Уведомления
                // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("You tap buttom"))); выводи сообщение на экрав в нижнем баре
                Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context){
                      return Scaffold(
                        appBar: AppBar(
                          title: const MyStatelessWidget(),
                        ),
                        body: const Center(
                          child: Text("avait",
                          style: TextStyle(fontSize: 36)
                          ),
                        ),
                      );
                    }
                ));
              },
              icon: const Icon(Icons.add_alert))
        ],
      ),
      body: PageView(
        controller:  pageController,
        children: [
          Container(color: Colors.redAccent,),

          Container(alignment: Alignment.center,
          child: Text("Hello, Flutter", style: TextStyle(fontSize: 52),),
          ),

          Container(
              child: MyStatelessWidget()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.lens_outlined), label: 'News'),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'PersonalData'),
      ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.green,
        onTap: onTappen,
      ),
    );
  }
}


