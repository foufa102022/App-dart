import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    'What\'s your favorite color ?',
    'What\'s your favorite animal ?',
    'What\'s your favorite Car ?',
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print('Answer pressed !');
  }


 

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border()
        ),
        child: Text('Bonjour'),
      ),
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
),
        
          appBar: AppBar(title: Text('First App!')
          
          ),
          
        
          body: _questionIndex < questions.length 
          ? Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    questions[_questionIndex],
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: answerQuestion,
                    child: Text('Answer 1'),
                  ),
                ),
                SizedBox(
                    
                    height: 30,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: answerQuestion,
                                    child: Text('Answer 2'),)
                
                ),
               
              SizedBox(
                 height: 30,
                  width: double.infinity,
               child : ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text('Answer 3'),
                )),
              ],
            ),
          )
          : Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              'No questions yet!',
          ),
      )
      )
      );
  }
}