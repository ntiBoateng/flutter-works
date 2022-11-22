import 'package:flutter/material.dart';
import 'customw.dart';
import 'otherpage.dart';
void main() {
  runApp( LearnButtons());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stateless Widget',
        home: Scaffold(
            body: Container(
                color: Colors.teal,
                child: Container(
                    color: Colors.blueGrey,
                    margin: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text(
                      'Discoveries',
                      style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ))))));
  }
}

class SecondApp extends StatefulWidget {
  const SecondApp({Key? key}) : super(key: key);

  @override
  State<SecondApp> createState() => _SecondAppState();
}

class _SecondAppState extends State<SecondApp> {
  String ttext = '';
  @override
  void initState() {
    // TODO: implement initState
    ttext = 'Click Me Once';
    super.initState();
  }

  void mtd() {
    setState(() {
      ttext = 'The text has being changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget',
      home: Scaffold(
        body: Center(
          child: Container(
              color: Colors.black87,
              child: Center(
                  child: TextButton(
                      onPressed: () {
                        mtd();
                      },
                      child: Text(
                        ttext,
                        style: TextStyle(
                          backgroundColor: Colors.teal,
                        ),
                      )))),
        ),
      ),
    );
  }
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Node Monitor',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Learn Containers",
              style: TextStyle(color: Colors.tealAccent),
            ),
          ),
          body: Container(
            child: Text(
              'This a Container',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            width: 300,
            height: 450,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            transform: Matrix4.rotationZ(0.5),
          )),
    );
  }
}

class ResolvedApp extends StatelessWidget {
  const ResolvedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Learn',
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Center(
              child: Text('Learn Rows and Columns'),
            ),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'With All Goodness',
                style: TextStyle(color: Colors.lightGreenAccent),
              ),
              const Text(
                'Same today',
                style: TextStyle(color: Colors.indigo),
              ),
              const Text(
                'Rejoice',
                style: TextStyle(color: Colors.redAccent),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Try new things'),
                  Text('Make them bleed'),
                  Text('Resolve all protocols')
                ],
              )
            ],
          ),
        ));
  }
}

class ListApp extends StatelessWidget {
  const ListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: const Text('Learn List in Flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Gideon'),
            trailing: Icon(Icons.add, color: Colors.cyan),
          ),
          ListTile(
            title: Text('Mabel'),
            trailing: Icon(
              Icons.access_alarm_outlined,
              color: Colors.deepOrangeAccent,
            ),
          ),
          ListTile(
            title: Text('Dorothy'),
            trailing: Icon(
              Icons.add_call,
              color: Colors.lightGreen,
            ),
          )
        ],
      ),
    ));
  }
}

class ListFul extends StatefulWidget {
  const ListFul({Key? key}) : super(key: key);

  @override
  State<ListFul> createState() => _ListFulState();
}

class _ListFulState extends State<ListFul> {
  List<int> items = [];

  @override
  void initState() {
    // TODO: implement initState
    for (var i = 0; i <= 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title:const Text('Lists and Arrays')),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title:  Text('Item no. $index', style: const TextStyle(color: Colors.white),),
                trailing:const Icon(Icons.arrow_circle_right, color: Colors.teal,),
              );
            }),
      ),
    );
  }
}


class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text('Working with Stacks in Flutter')),
        body: Stack(
          alignment: Alignment.center,
          children:const [
            Card(color: Colors.blueGrey, child: Padding(padding: EdgeInsets.all(200.0)),),
            Card(color: Colors.redAccent, child: Padding(padding: EdgeInsets.all(100.0)),),
            Card(color: Colors.greenAccent, child: Padding(padding: EdgeInsets.all(50.0)),),
            Card(color: Colors.indigo, child: Padding(padding: EdgeInsets.all(30.0)),)
          ],
        )
      ),
    );
  }
}

class Grids extends StatefulWidget {
  const Grids({Key? key}) : super(key: key);

  @override
  State<Grids> createState() => _GridsState();
}

class _GridsState extends State<Grids> {

  List<int> items = [];

  @override
  void initState() {
    // TODO: implement initState
    for(var i=0;i<42;i++){
      items.add(i);
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Working with GridViews')),
        body: GridView.builder(
          itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index){
                return const Card(

                  color: Colors.blueGrey,
                  child: Padding(padding: EdgeInsets.all(20.0),),
                );
            }
        ),
        backgroundColor: Colors.brown,
      ),
    );
  }
}

class LearnAppBar extends StatelessWidget {
  const LearnAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Learn AppBar Properties', style: TextStyle(color: Colors.red),),
          // centerTitle: true,
          elevation: 30.0,
          titleSpacing: 60.0,
          toolbarOpacity: 0.3,
          backgroundColor: Colors.greenAccent,
        ),
      )
    );
  }
}

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Learn AppBar'),
          backgroundColor: Colors.indigo,
          leading: const Icon(Icons.menu),
          actions:const [
            IconButton(onPressed: null,
                icon: Icon(Icons.add_call, color: Colors.red,)),
            IconButton(onPressed: null, icon: Icon(Icons.add_card_sharp,color: Colors.red)),
            IconButton(onPressed: null, icon: Icon(Icons.ac_unit_outlined,color: Colors.red)),
          ],
        ),
      ),
    );
  }
}


class AppBarStateful extends StatefulWidget {
  const AppBarStateful({Key? key}) : super(key: key);

  @override
  State<AppBarStateful> createState() => _AppBarStatefulState();
}

class _AppBarStatefulState extends State<AppBarStateful> {
  String textn = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('App Bar',style: TextStyle(color: Colors.deepOrange),),
          titleSpacing: 30.0,
          backgroundColor: Colors.blueGrey,
          leading: IconButton(onPressed: () {
            setState(() {
              textn='You just pressed on the menu button';
            });
          }, icon:const Icon(Icons.menu),),
          actions: [
            IconButton(onPressed: (){
              setState(() {
                textn = 'This is a Add Card sharp Icon';
              });
            },
                icon:const Icon(Icons.add_card_sharp)),
            IconButton(onPressed: (){
              setState(() {
                textn='Add Card Icon from Flutter';
              });
            },
                icon:const Icon(Icons.add_card)),
            IconButton(onPressed: (){
              setState(() {
                textn='Make a Call Icon';
              });
            },
                icon: const Icon(Icons.add_call))
          ],
        ),
        body: Container(
          child: Center(
            child: Text(textn)
          ),
        )
      )
    );
  }
}





class ApplicationTab extends StatefulWidget {
  @override
  _ApplicationState createState() =>  _ApplicationState();
}

class _ApplicationState extends State<ApplicationTab> with SingleTickerProviderStateMixin {

  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "Application001",
        home:  Scaffold(
          appBar:  AppBar(
            title: const Text("Discoveries",),
            centerTitle: true,
            actions:const [
              IconButton(onPressed: null,iconSize: 20.0, icon: Icon(Icons.add_card, color: Colors.lightBlue,)),
              IconButton(onPressed: null,iconSize: 20.0, icon: Icon(Icons.add_call, color: Colors.lightBlue)),
              IconButton(onPressed: null,iconSize: 20.0, icon: Icon(Icons.add_chart, color: Colors.lightBlue))
            ],
            leading:const IconButton(onPressed: null,icon: Icon(Icons.accessibility),),
            bottom: TabBar(
                controller: controller,
                tabs: const [
                   Tab(text: "Home" ,),
                   Tab(text: "Resources",),
                  Tab(text: "Contact",),
                ]),
            backgroundColor: Colors.blueGrey,
          ),
          bottomNavigationBar: Material(
            color: Colors.teal,
            child:  TabBar(
                controller: controller,
                tabs: const [
                   Tab(text: "Home" ,),
                   Tab(text: "Resources",),
                  Tab(text: "Contact",),
                ]),
          ),

          body:   TabBarView(
            controller: controller,
            children:const [
               Center(child: Text("Welcome Home") ,),
               Center(child:Text("Find Material Resources Here") ,),
               Center(child: Text("Contacts") ,),
            ],
          ),
        )
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: customwidgets(),
      )
    );
  }
}


class LearnTextF extends StatefulWidget {
  const LearnTextF({Key? key}) : super(key: key);

  @override
  State<LearnTextF> createState() => _LearnTextFState();
}

class _LearnTextFState extends State<LearnTextF> {
  
  String pText='';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: const Text('TextFields in Flutter'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (String txt){
              setState(() {
                pText = txt;
              });
    }
              ,
              decoration:const InputDecoration(hintText: 'Type Anything!', labelText: 'Fullname', ),
            ),
            Text(pText)
          ],
        ),
      )
    );
  }
}

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({Key? key}) : super(key: key);

  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('RichTextFields', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          leading:const IconButton(onPressed: null, icon: Icon(Icons.menu, color: Colors.greenAccent,),),
        ),
        body: Padding(
          padding:const EdgeInsets.all(30.0),
          child: Column(
            children:const [
              Padding(padding: EdgeInsets.all(14.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'first name', labelText: 'First Name', border: OutlineInputBorder()),
              ),
              ),
              Padding(padding: EdgeInsets.all(14.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'surname', labelText: 'Surname', border: OutlineInputBorder()),
                ),
              ),

              TextButton(onPressed: null, child: Text('Sign Me'), )
            ],
          ),
        )
      )
    );
  }
}


class LearnButtons extends StatefulWidget {
  const LearnButtons({Key? key}) : super(key: key);

  @override
  State<LearnButtons> createState() => _LearnButtonsState();
}

class _LearnButtonsState extends State<LearnButtons> {

  @override
  Widget build(BuildContext context) {
    bool cbool = false;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text('Drawer'), centerTitle: true,),
        drawer: Drawer(backgroundColor: Colors.blueGrey,
          child: ListView(
            children: [
             const UserAccountsDrawerHeader(
                 accountName: Text('NTI Boateng'),
                 accountEmail: Text('gideon.boateng@amalitech.com'),
             currentAccountPicture: CircleAvatar(backgroundColor: Colors.redAccent,child: Text('GN'),),
             decoration: BoxDecoration(color: Colors.green),),

             ListTile(title:const Text('Resources'), trailing:const Icon(Icons.add_chart), onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> op('Resources')));
            },),
              ListTile(title:const Text('Discoveries'), trailing:const Icon(Icons.add_card), onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> op('Discoveries')));
              },
              ),
              ListTile(title:const Text('Back', ), trailing:const Icon(Icons.close, color: Colors.red,), onTap: (){Navigator.of(context).pop();}),

            ],
          ),
        ),
        body: Column(
          children: [

          ],
        )
      )
    );
  }
}



//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blueGrey,
//       ),
//       home: const MyHomePage(title: 'The Discovery Eyes!'),
//     );
//   }
// }
//
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String name ='';
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
// String _sayName(){
//     name += " best";
//     return name;
// }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       resizeToAvoidBottomInset : false,
//       appBar: AppBar(
//
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//
//             const Text(
//               'You have pushed the button this many times', style: TextStyle(color: Colors.cyan, fontSize: 18),
//             ),
//             const Text('Bienvenida!', style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//
//              Image.asset('images/splash.jpg',  height: 595, width: 500,),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline3,
//             ),
//             const Text('Find Me', style: TextStyle(color: Colors.deepOrange, fontSize: 30))
//
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.email),
//       ),
//
//     );
//   }
// }
