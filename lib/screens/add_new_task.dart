import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/color.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: Column(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight / 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("lib/assets/images/add_new_task_header.png"),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Add New Task",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            const Text("Task Title"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextField(
                decoration:
                    InputDecoration(filled: true, fillColor: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Category"),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(milliseconds: 300),
                        content: Text("Category selected"),
                      ),
                    );
                  },
                  child: Image.asset("lib/assets/images/Category1.png"),
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(milliseconds: 300),
                        content: Text("Category selected"),
                      ),
                    );
                  },
                  child: Image.asset("lib/assets/images/Category2.png"),
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(milliseconds: 300),
                        content: Text("Category selected"),
                      ),
                    );
                  },
                  child: Image.asset("lib/assets/images/Category3.png"),
                )
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Date"),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true, fillColor: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("Time"),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField())
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
