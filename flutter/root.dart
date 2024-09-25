import 'package:flutter/material.dart';
// [[imports]]

 class Item {
      String title;
      String subtitle;
      String longitude;
      String latitude;
      String image;
      String detailtext;
      String tag; 
      String icon;
    
      Item({
        this.title = "", 
        this.subtitle = "",
        this.longitude = "",
        this.latitude = "",
        this.image = "",
        this.detailtext = "",
        this.tag = "",
        this.icon = ""
      });

      Item.fromJson(Map<String, dynamic> json) :
        title = json['title'],
        subtitle = json['subtitle'],
        longitude = json['longitude'],
        latitude = json['latitude'],
        image = json['image'],
        detailtext = json['detailtext'],
        tag = json['tag'],
        icon = json['icon'];
      
      Map<String, dynamic> toJson() {
        return {
          'title':title,
          'subtitle':subtitle,
          'longitude':longitude,
          'latitude':latitude,
          'image':image,
          'detailtext':detailtext,
          'tag':tag,
          'icon':icon
        };
      }
    }

class StringWrapper {
  late dynamic value;
  StringWrapper([dynamic value]) {
    this.value = value ?? "";
  }
}

class StateEntry {
  late int id;
  dynamic value;
  StateEntry({required this.id, this.value});
}
class StateMnmgt {
  List<StateEntry> state = []; 
  getState(id) {
    return state.where((s) => s.id == id).first.value;
  }
  setState(int id, value) {
    for (var item in state) {
        if (item.id == id) { item.value = value; return; }  
    }
    state.add(StateEntry(id:id, value:value));
  } 
}

StateMnmgt statemanagement = StateMnmgt(); 
// [[global]]

void main() { 
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Generator Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '[[title]]'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   @override
  void initState() {
    { /* [[setup]] */ } 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            { /* [[local]] */ }
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}