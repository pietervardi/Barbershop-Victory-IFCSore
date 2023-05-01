import 'package:flutter/material.dart';
import 'package:barbershop_app/utils/colors.dart';
import 'profile_screen.dart';


class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('EDIT PROFILE'),
        centerTitle: true,
        backgroundColor: appBar,
      ),
      body: Center(
        child: Column(children: [
          const Padding(padding: EdgeInsets.all(10)),
          const CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
              'https://cdn.sharechat.com/16ed0584-5fb7-494a-a051-28312a36b581-807fabc4-296c-45e2-8eba-b97f4d716d30.jpeg',
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            width: 300,
            child: Column(children: [
              TextFormField(
                controller: textFieldController1,
                decoration: InputDecoration(icon: Icon(Icons.person) ),
                style: const TextStyle(fontSize: 20),
                
              ),
              TextFormField(
                controller: textFieldController2,
                decoration: InputDecoration(icon: Icon(Icons.email) ),
                style: TextStyle(fontSize: 20),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.deepOrangeAccent,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 85, vertical: 20)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ProfileScreen(email:textFieldController1.text,username:textFieldController2.text));
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    'Confirm Changes',
                    style: TextStyle(fontSize: 15),
                  )),
              const Padding(padding: EdgeInsets.all(50)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.red,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 15),
                  )),
            ]),
          ),
        ]),
      ),
    );
  }
}