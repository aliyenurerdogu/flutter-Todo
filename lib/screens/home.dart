import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/color.dart';
import 'package:flutter_todo/constants/tasktype.dart';
import 'package:flutter_todo/model/task.dart';
import 'package:flutter_todo/screens/add_new_task.dart';
import 'package:flutter_todo/todoitem.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List<String> todo = ["Study lessons", "Run 5k", "Go to party"];
  //List<String> completed = ["Game meetup", "Take out tash"];

  List<Task> todo = [
    Task(
      type: TaskType.note,
      title: "Study lessons",
      description: "Study COMP117",
      isCompleted: false,
    ),
    Task(
      type: TaskType.contest,
      title: "Run 5k",
      description: "Run 5 kilometers",
      isCompleted: false,
    ),
    Task(
      type: TaskType.calendar,
      title: "Go to party",
      description: "Attend to party",
      isCompleted: false,
    )
  ];

  List<Task> completed = [
    Task(
        type: TaskType.calendar,
        title: "Game meetup",
        description: "description",
        isCompleted: true),
    Task(
        type: TaskType.note,
        title: "Take out trash",
        description: "description",
        isCompleted: true)
  ];


  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              //container header a ait
              Container(
                width: deviceWidth,
                height: deviceHeight / 3,
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage("lib/assets/images/Header.png"),
                        fit: BoxFit.cover)),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "January 22, 2025",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "My Todo List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              // ilk expanded top column a ait
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: todo.length,
                      itemBuilder: (context, index) {
                        return TodoItem(
                          task: todo[index],
                        );
                      },
                    ),
                  ),
                ),
              ),
              //padding completed text e ait
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              //ikinci expanded ise bottom column a ait
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: completed.length,
                      itemBuilder: (context, index) {
                        return TodoItem(
                          task: completed[index],
                        );
                      },
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    //bu fonk. "add new task butonuna basıldıgında calısan fonk."
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddNewTaskScreen(
                        addnewTask:  ,
                      ),
                    )
                        //builder fonk için arrow func. secilir.tek bir return yapılır
                        );
                  },
                  child: const Text("Add New Task"))
            ],
          ),
        ),
      ),
    );
  }
}
