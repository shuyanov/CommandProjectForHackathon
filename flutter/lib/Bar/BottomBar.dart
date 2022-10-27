import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex =0;
  static const TextStyle optionStyle = TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static const List<Widget> _WidgetOption = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Чаты',
      style: optionStyle,
    ),
    Text(
      'Index 2: Заявки',
      style: optionStyle,
    ),
    Text(
      'Index 3: Оплата',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: const Icon(Icons.person_pin),
          tooltip: 'Профиль',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext){
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Профиль'),
                      backgroundColor: Colors.cyan,
                    ),
                    body: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 30)),
                              CircleAvatar(
                                backgroundImage: AssetImage('image/llll.jpg'),
                                //backgroundColor: Colors.white,
                                radius: 60,
                              ),
                              Text('Имя пользователя', style: TextStyle(fontSize: 32)),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
            ));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert_rounded),
            tooltip: 'Уведомления',
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: _WidgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Главная',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Чаты',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_as_unread),
            label: 'Заявки',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Оплата',
            backgroundColor: Colors.redAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
