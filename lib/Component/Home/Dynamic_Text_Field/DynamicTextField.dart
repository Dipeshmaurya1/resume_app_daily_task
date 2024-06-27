import 'package:flutter/material.dart';

class DynamicText extends StatefulWidget {
  const DynamicText({super.key});

  @override
  State<DynamicText> createState() => _DynamicTextState();
}

class _DynamicTextState extends State<DynamicText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dynamic TextField'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: TextField(
                controller: txtController,
                decoration: const InputDecoration(
                  labelText: 'Skills',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                  border: OutlineInputBorder(),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      TextEditingController txtController =
                          TextEditingController();
                      setState(() {
                        txtControllerList.add(txtController);
                      });
                    },
                    icon: const Icon(
                      Icons.add_circle_outline_outlined,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            ...List.generate(
              txtControllerList.length,
              (index) => ListTile(
                title: TextField(
                  controller: txtControllerList[index],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        TextEditingController txtController =
                            TextEditingController();
                        setState(() {
                          txtControllerList.add(txtController);
                        });
                      },
                      icon: const Icon(
                        Icons.add_circle_outline_outlined,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          txtControllerList.removeAt(index);
                        });
                      },
                      icon: const Icon(
                        Icons.cancel_outlined,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String skills = txtController.text;
          for (int i = 1; i < txtControllerList.length; i++) {
            skills = skills + " " + txtControllerList[i].text;
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${skills}'),
            ),
          );
        },
        child: Icon(Icons.slideshow_outlined),
      ),
    );
  }
}

TextEditingController txtController = TextEditingController();

List<TextEditingController> txtControllerList = [
  txtController,
];
