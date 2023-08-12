import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_shared/noteshome.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notescontroller = TextEditingController();

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Shared'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'enter your notes'),
                controller: notescontroller,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  notesget(notescontroller.text);
                },
                child: Text("submit your notes")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => noteshome(),
                      ));
                },
                child: Text('View Notes'))
          ],
        ),
      ),
    ));
  }

  void notesget(notevalue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("notes", notevalue);
  }
}
