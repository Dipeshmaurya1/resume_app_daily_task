import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Utils/LIstOfGmailDrawer.dart';
class GmailDrawer extends StatefulWidget {
  const GmailDrawer({super.key});

  @override
  State<GmailDrawer> createState() => _GmailDrawerState();
}

class _GmailDrawerState extends State<GmailDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          backgroundColor: Colors.grey.shade800,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                ListTile(
                  title: Text('Gmail',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Divider(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.all_inbox,size: 25,color: Colors.white),
                  title: Text('All Inbox',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Divider(
                  height: 20,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xff5A4645),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)),
                  ),

                  child: ListTile(
                    leading: Icon(Icons.inbox,size: 25,color: Color(0xffDC9692)),
                    title: Text('Inbox',style: TextStyle(fontSize: 20,color: Color(0xffDC9692)),),
                  ),
                ),
                Divider(
                  height: 20,
                ),
                ...List.generate(TextList.length , (index) => gmailList(index)),
                Divider(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.add,size: 25,color: Colors.white),
                  title: Text('Create New',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
                Divider(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined,size: 25,color: Colors.white),
                  title: Text('Settings',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
            title: Text('Gmail',style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }

  ListTile gmailList(int index) {
    return ListTile(
              leading: Icon(IconList[index],size: 25,color: Colors.white,),
              title: Text(TextList[index],style: TextStyle(fontSize: 20,color: Colors.white)),
            );
  }
}
