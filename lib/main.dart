import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  mySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Toolbar"),
        titleSpacing: 0,
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.amber,
        shadowColor: Colors.cyan,
        elevation: 8,
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {
                mySnackbar("I am Comments", context);
              },
              icon: const Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                mySnackbar("I am Search", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackbar("I am Settings", context);
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                mySnackbar("I am Email", context);
              },
              icon: const Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 16,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: () {
          mySnackbar("Float button clicked", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Email"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackbar("I am Bottom tab menu.", context);
          }
          if (index == 1) {
            mySnackbar("I am Bottom tab mail.", context);
          }
          if (index == 2) {
            mySnackbar("I am Bottom  tab person.", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.amber),
                  accountName: Text("Md Eusuf Uddin"),
                  accountEmail: Text("eusuf.cse@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://static-00.iconduck.com/assets.00/flutter-icon-826x1024-6zc4ptzd.png"),
                )),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.home),
              onTap: () {
                mySnackbar("About", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Education"),
              leading: Icon(Icons.person),
              onTap: () {
                mySnackbar("Education", context);
              },
            ),
            ListTile(
              title: Text("Gallery"),
              leading: Icon(Icons.percent),
              onTap: () {
                mySnackbar("Gallery", context);
              },
            ),
            ListTile(
              title: Text("contact"),
              leading: Icon(Icons.contact_page),
              onTap: () {
                mySnackbar("contact", context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: 250,
        height: 250,
        margin: EdgeInsets.fromLTRB(40, 40, 60, 60),
        padding: EdgeInsets.all(60),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 6),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Image.network("https://www.baabtra.com/assets/images/course/flutter-course-training-calicut-kerala.png"),
      )
      ,
    );
  }
}
