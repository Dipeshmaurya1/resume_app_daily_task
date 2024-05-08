import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class StatusBar extends StatefulWidget {
  const StatusBar({super.key});

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Text('Status Bar',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}