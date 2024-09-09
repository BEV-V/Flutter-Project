import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(),
             ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Post'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        floatingActionButton: FloatingActionButton(
          onPressed: (){_showMyDialog();},
          child: Icon(Icons.add),
          ),
        
             appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: SizedBox( 
              width: 30,
              child: CircleAvatar(
                maxRadius: 20,
                backgroundColor: Colors.pink,
              ),
            ),

            bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              
              tabs: [
                  Tab(
                  text: 'For you',
                   ),
      
                Tab(
                  text: 'Following',
                ),
              ]),
            backgroundColor: Colors.black,
            title: Text("X", 
            style: TextStyle(
              fontSize: 50,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ), 
            ),
            
            centerTitle: true,   
           ),
        body: TabBarView(
          children: [
            Container(height: 100, width: 100,
            color: Colors.pink),
        
            Container(height: 100, width: 100,
            color: Colors.purple),
         ]
         ), 
      ),
    );
  }
}
