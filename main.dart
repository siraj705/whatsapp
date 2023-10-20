import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade700,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          title: const Text('WhatsApps'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.message),
              ),
              Tab(
                // icon: Icon(Icons.beach_access_sharp),
                child: Text('Status'),
              ),
              Tab(
                icon: Icon(Icons.call),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: Text('AK'),
                      ),
                      title: Text('Ahmed'),
                      subtitle: Text('kaha ho bhai ?'),
                      trailing: Text('6:08 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('Sk'),
                      ),
                      title: Text('Sameer Khan'),
                      subtitle: Text('Ajao wrna ma nikl jao ga'),
                      trailing: Text('10:01 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Text('UZ'),
                      ),
                      title: Text('Umar Zahid '),
                      subtitle: Text('Ma nhi araha bhai '),
                      trailing: Text('9:34 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Text('JP'),
                      ),
                      title: Text('Jawan Pakitan n'),
                      subtitle: Text('Sir link khol nhi raha .'),
                      trailing: Text('8:00 am'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text('HS'),
                      ),
                      title: Text('Hamza Shaikh'),
                      subtitle: Text('Nicha Aa.'),
                      trailing: Text('11:23 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text('SS'),
                      ),
                      title: Text('Shahzain Shaikh'),
                      subtitle: Text('Laptop kawpais da jao .'),
                      trailing: Text('10:21 pm'),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Text("No Status"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                // child: Text("No Calls yet"),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: Text('SK'),
                      ),
                      title: Text('Salman'),
                      subtitle: Text('Missed you a voice Call.'),
                      trailing: Text('2:08 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('P'),
                      ),
                      title: Text('PAPA'),
                      subtitle: Text('Group Call'),
                      trailing: Text('12:01 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text('H'),
                      ),
                      title: Text('HOME 2'),
                      subtitle: Text('Called.'),
                      trailing: Text('9:34 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Text('FD'),
                      ),
                      title: Text('Faraz Dubai'),
                      subtitle: Text('Missed you a voice Call.'),
                      trailing: Text('8:00 am'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Text('NM'),
                      ),
                      title: Text('NAbleel hussain'),
                      subtitle: Text('You Called.'),
                      trailing: Text('11:23 pm'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown,
                        child: Text('AM'),
                      ),
                      title: Text('Asharib muqim'),
                      subtitle: Text('Missed you a voice Call.'),
                      trailing: Text('10:21 pm'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

chatFunction(String name, String msg, String time) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.red,
      child: Text('JH'),
    ),
    title: Text('$name'),
    subtitle: Text('$msg'),
    trailing: Text('$time'),
  );
}
