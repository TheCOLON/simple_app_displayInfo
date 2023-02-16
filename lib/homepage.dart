import 'package:display_info/add_form.dart';
import 'package:display_info/employeeDetails.dart';
import 'employee_class.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Employee emp = Employee(
    employeeNumber: '',
    name: '',
    birthday: '',
    gender: '',
    address: '',
  );

  List info = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jaxxson Co. Employee"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 115, 188, 197),
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    // backgroundImage: AssetImage(''),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'JAXXSON CO.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'jaxxsonCo@gmail.com',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            )),
            const Divider(
              thickness: .06,
              color: Colors.blue,
            ),
            const ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.person),
              title: Text(
                'About Us',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.help),
              title: Text(
                'Help Center',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            onDismissed: (dismiss) {
              setState(() {
                info.removeAt(index);
              });
            },
            child: Card(
              child: ListTile(
                title: Text(
                  info[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${info[index].employeeNumber}'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(details: info[index])));
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Employee newlistinfo = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddForm()));
          if (newlistinfo.employeeNumber != null) {
            setState(() {
              info.add(newlistinfo);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
