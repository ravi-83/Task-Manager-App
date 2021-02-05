import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/tasks/task_data.dart';


class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final textField=TextEditingController();
  bool isNull=false;
  String textValue;
  final _text = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),

            TextField(

              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                //labelText: 'Enter the Value',
                errorText: isNull ? 'Value Can\'t Be Empty' : null,
              ),

              onChanged: (newText){
                //print(newText);
               textValue=newText;

              },

            ),
            SizedBox(height: 20,),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: (){
                if(textValue== null){
                  setState(() {
                    _text.text.isEmpty ? isNull = true : isNull = false;
                  });

                }else {
                  var counter = context.read<TaskData>();
                  // if(textValue==null){
                  //
                  // }

                  counter.addTask(textValue);
                  textField.clear();
                  Navigator.pop(context);
                }
              },
              height: 50,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


