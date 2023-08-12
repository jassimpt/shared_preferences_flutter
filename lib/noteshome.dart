import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class noteshome extends StatefulWidget {
  const noteshome({super.key});

  @override
  State<noteshome> createState() => _noteshomeState();
}

class _noteshomeState extends State<noteshome> {
  String? notevalue;

  @override
  void initState() {
    super.initState();
    notesviewer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: notevalue == null ? Text('No Notes') : Text(notevalue!)),
    ));
  }

  void notesviewer() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    notevalue = pref.getString('notes');
    setState(() {});
  }
}
