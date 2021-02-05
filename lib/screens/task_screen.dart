import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/screens/add_task_screen.dart';
//import 'package:to_do/task.dart';
import 'package:to_do/tasks/task_tile.dart';
import 'package:to_do/tasks/task_data.dart';
import 'package:to_do/clock.dart';

DateTime time=DateTime.now();

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.only(top: 60,left: 30,bottom: 30,right: 30),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: [

                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                       size: 30,
                       color: Colors.lightBlueAccent,
                       // color: Colors.white,
                      ),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Clock(),
                        Calender(),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Task-Manager',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,

                  ),
                ),

              ],

            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:  Radius.circular(20)),

              ),
              child: TaskTile(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        // ),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )
              )
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
     bottomNavigationBar: BottomAppBar(
       clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: CircularNotchedRectangle(),

       child: Container(
         height: 30,
         color: Colors.lightBlueAccent,
       ),
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}




