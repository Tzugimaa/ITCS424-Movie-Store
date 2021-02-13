import 'package:flutter/material.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie List',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Movie List')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatefulWidget {
  @override
  _BodyLayoutState createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
    double _counter = 0;

    void _incrementCounter(price) {
      setState(() {
        _counter += price;
      });
    }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie1.jpg'),
          ),
          title: Text('Avengers:Endgame'),
          subtitle: Text('Price: \$5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(5);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie2.jpg'),
          ),
          title: Text('Black Panther'),
          subtitle: Text('Price: \$4'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(4);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie3.jpg'),
          ),
          title: Text('Interstellar'),
          subtitle: Text('Price: \$3'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(3);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie4.jpg'),
          ),
          title: Text('Ready Player One'),
          subtitle: Text('Price: \$3.5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(3.5);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie5.jpg'),
          ),
          title: Text('Skyfall'),
          subtitle: Text('Price: \$2.5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(2.5);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie6.jpg'),
          ),
          title: Text('Wonder Woman'),
          subtitle: Text('Price: \$3.5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(3.5);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie7.jpg'),
          ),
          title: Text('Parasite'),
          subtitle: Text('Price: \$5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(5);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie8.jpg'),
          ),
          title: Text('Knives Out'),
          subtitle: Text('Price: \$5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(5);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie9.jpg'),
          ),
          title: Text('Inside Out'),
          subtitle: Text('Price: \$3'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(3);
            print('Item added.');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/movie10.jpg'),
          ),
          title: Text('Deadpool'),
          subtitle: Text('Price: \$3.5'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            _incrementCounter(3.5);
            print('Item added.');
          },
        ),
        Text(
          'Total expense',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
        ),
        Text(
          '$_counter',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
        )
      ],
    );
  }
}
