/*
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main(){
  runApp(new SnackBarDemo());
}


class SnackBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "SnackBar Demo",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("SnackBar Demo"),
        ),
        body: new SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new RaisedButton(onPressed: (){
        final SnackBar snackBar = new SnackBar(
          content: new Text("Hello!"),
          action: new SnackBarAction(
              label: "Undo",
              onPressed: (){},
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Text("Show SnackBar"),
      ),
    );
  }
}

*/









/* /////////////////// Themes
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appName = "Custom Themes";
    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: new MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key key, @required this.title}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor,
          child: new Text(
            "Text with bg color",
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: new Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.teal),
        child: new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.add,
              color: Colors.black,
            ),
        ),
      ),
    );
  }
}

*/
















/*void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Name Generation",
      theme: new ThemeData.dark(),
      home: new RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _biggestFont = const TextStyle(fontSize: 21.0);
  final _saved = new Set<WordPair>();
  Widget _buildSuggestions(){
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i){
          if (i.isOdd) return new Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        },
    );
  }

  Widget _buildRow(WordPair pair){
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggestFont,
      ),
      trailing: new Icon(
          alreadySaved ? Icons.favorite:null,
          color: alreadySaved ? Colors.white:null,
      ),
      onTap: (){
        setState((){
          alreadySaved ? _saved.remove(pair) : _saved.add(pair);
        });
      },
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final tiles = _saved.map(
              (pair){
                return new ListTile(
                  title: new Text(
                    pair.asPascalCase,
                    style: _biggestFont,
                  ),
                );
              }
          );
          final divided = ListTile.divideTiles(
              tiles: tiles,
            context: context,
          ).toList();
          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Saved"),
            ),
            body: new ListView(children: divided)
          );
        }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name Generation"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list),
              onPressed: _pushSaved,
          ),
        ],
      ),
      body: _buildSuggestions()
    );
  }
}*/











/*
void main() => runApp(MyApp(
  TextInput: new Text("Hello from main!"),
));

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Classes SK",
      home: new Scaffold(
        appBar: new AppBar(
        title: new Text("My Second App in Flutter"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
                new Text("Hello"),
                new Text("World")
            ],
          ),
        ),
      ),
    );
  }
}*/
class MyApp extends StatefulWidget{
  final Widget TextInput;

  MyApp({this.TextInput});

  MyAppState createState() => new MyAppState();

}
  /*bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Main",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello Flutter!"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              TextInput,
              new Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool newValue){
                    checkBoxValue = newValue;
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
class MyAppState extends State<MyApp>{
  bool checkBoxValue = false;
  String actionText = "Default";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Statefull And Stateless"),

        ),
        body: new Center(
          child: new Row(
            children: <Widget>[
              widget.TextInput,
              new Text(actionText),
              new Checkbox(
                value: checkBoxValue,
                onChanged: (bool newVal){
                  setState(() {
                    checkBoxValue =  newVal;
                  });
                },
              ),
                new IconButton(
                    icon: new Icon(Icons.favorite),
                    onPressed: (){
                      setState(() {
                        actionText = "New one";
                      });
                    }
                ),
                new IconButton(
                    icon: new Icon(Icons.favorite_border),
                    onPressed: (){
                      setState(() {
                        actionText = "Default";
                      });
                    }
                ),
            ],
          ),
        ),
      ),
    );
  }
}*/
class Mic{
  String name, color;
  int model=-1;
  /*Mic(String name, String color, [int model]){
    this.name = name;
    this.color = color;
    this.model = ((model!=null)?model:0);
  }
  Mic(this.name, this.color, this.model);
  Mic.initialize(){
    name = "Yamaha";
    color = "Grey";
    model = 1234;
  }*/
  String get getName => name; // getter
  set setName(String newName) => name = newName; //setter

  void micInfo(){
    print(this.name);
    print(this.color);
    print(this.model);
  }

  void sayHello(){
    print("Hello $name");
  }
}

class Yamaha extends Mic{ // extends = inheritance
  String date;
  String get getDate => date;
}



main(List<String> arguments){
  var yamaha = new Yamaha();
  yamaha.setName = "Yamaha";
  yamaha.date = "12/12/2012";
  yamaha.micInfo();
  print(yamaha.getDate);
}
//String sayHello(String name, String last, [int age]) => ((age==null)?"$name $last":"$name $last $age");


