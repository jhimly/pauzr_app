import 'package:flutter/material.dart';
import 'constants.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('PauzR'),),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(5.0, 100.0, 5.0, 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/time1');
                    },
                    child: Card(
                      elevation: 20.0,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Container(
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('10',style: style1,),
                                    Text('Minutes',
                                    style: style2,),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.black,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[//
                                    Text(
                                      '5 Points',
                                        style: style3,
                                      //style: style1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/time2');
                    },
                    child: Card(
                      elevation: 20.0,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Container(
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('20',style: style1,),
                                    Text('Minutes',style: style2,),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.black,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
//                                Icon(
//                                  Icons.person,
//                                  color: Colors.black,
//                                ),
                                    Text(
                                      '10 Points',style: style3,
                                      //style: style1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/time3');
                    },
                    child: Card(
                      elevation: 20.0,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Container(
                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('30',style: style1,),
                                    Text('Minutes',style: style2,),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.black,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[//
                                    Text(
                                      '20 Points',style: style3,
                                      //style: style1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.shifting ,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.stars,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pause,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          )
        ],
        onTap: (index){
          _incrementTab(index);
        },

    ),
    );
  }
}
