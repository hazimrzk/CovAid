import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covaid/globalvars.dart';
import 'package:covaid/services/database.dart';

class NextLayer {
  String image;
  String title;
  String next;
  String subtitle;

  NextLayer({this.image, this.title, this.next, this.subtitle});
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<NextLayer> layers = [
    NextLayer(
      image:
          'https://storage.googleapis.com/covaid-eeum.appspot.com/layer_daily.png',
      title: 'Daily Cases',
      next: '/daily',
      subtitle: 'Overview for the combined cases in Malaysia',
    ),
    NextLayer(
      image: 'https://storage.googleapis.com/covaid-eeum.appspot.com/my.png',
      title: 'State Cases',
      next: '/show',
      subtitle: 'View the statistics specific to a state',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        elevation: appBarElevation,
        backgroundColor: clrAppBarr,
        shape: cardRadius,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'CovAid',
              style: textAppBar,
            ),
            Column(
              children: [
                Text(
                  'Data from:',
                  style: TextStyle(
                    color: clrText,
                    fontSize: 14,
                    fontFamily: 'OpenSans',
                  ),
                ),
                Text(
                  dataDate,
                  style: TextStyle(
                    color: clrText,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          SizedBox(
            width: double.infinity,
            height: edgeValue,
          ),
          Padding(
            padding: padSides,
            child: Card(
              shape: cardRadius,
              color: clrItems,
              elevation: cardElevation,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: edgeValue,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: edgeValue, top: 0, right: edgeValue, bottom: 0),
                    child: Text("Dashboard", style: textBoxHeader),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: edgeValue,
                        top: 0,
                        right: edgeValue,
                        bottom: edgeValue),
                    child: Text("Today's new cases", style: textBoxSubtitle),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 175,
                    child: ListView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: edgeValue,
                              top: 0,
                              right: edgeValue,
                              bottom: edgeValue),
                          child: InkWell(
                            onLongPress: () {
                              Navigator.pushNamed(context, '/daily');
                            },
                            child: Card(
                              shape: cardRadius,
                              color: clrItemsTop,
                              elevation: cardElevation,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 105,
                                    width: 125,
                                    child: Padding(
                                      padding: EdgeInsets.all(25),
                                      child: Image.asset(
                                          'assets/icons/malaysia_i.png'),
                                    ),
                                  ),
                                  Text(
                                    "Malaysia",
                                    style: textBoxTitle,
                                  ),
                                  Text(
                                    '${dailyCases[dataDate]}  total cases',
                                    style: textBoxSubtitle,
                                    textScaleFactor: 0.8,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Add VerticalDivider(),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: states.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  right: edgeValue,
                                  bottom: edgeValue),
                              child: InkWell(
                                onLongPress: () {
                                  Navigator.pushNamed(context, '/show');
                                },
                                child: Card(
                                  shape: cardRadius,
                                  color: clrItemsTop,
                                  elevation: cardElevation,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 105,
                                        width: 125,
                                        child: Padding(
                                          padding: EdgeInsets.all(25),
                                          child: Image.asset(
                                              'assets/icons/${states[index].icon}'),
                                        ),
                                      ),
                                      Text(
                                        states[index].name,
                                        style: textBoxTitle,
                                      ),
                                      Text(
                                        '${stateCases[states[index].name]}  new cases',
                                        style: textBoxSubtitle,
                                        textScaleFactor: 0.8,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: padSides,
            child: Card(
              shape: cardRadius,
              elevation: cardElevation,
              color: clrItems,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: edgeValue,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: edgeValue, top: 0, right: edgeValue, bottom: 0),
                    child: Text("Insights", style: textBoxHeader),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: edgeValue,
                        top: 0,
                        right: edgeValue,
                        bottom: edgeValue),
                    child: Text("View data over the past months",
                        style: textBoxSubtitle),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: layers.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: padSides,
                          child: Card(
                            shape: cardRadius,
                            elevation: cardElevation,
                            color: clrItemsTop,
                            child: Column(
                              children: <Widget>[
                                InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, layers[index].next);
                                    },
                                    child: SizedBox(
                                        width: 275,
                                        height: 200,
                                        child: Image.network(
                                            layers[index].image))),
                                ListTile(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, layers[index].next);
                                  },
                                  title: Text(layers[index].title,
                                      style: textCardTitle),
                                  subtitle: Text(layers[index].subtitle,
                                      style: textCardSubtitle),
                                )
                              ],
                            ),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: padSides,
            child: Card(
              shape: cardRadius,
              elevation: cardElevation,
              color: clrItems,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: edgeValue,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: edgeValue, top: 0, right: edgeValue, bottom: 0),
                    child: Text("About", style: textBoxHeader),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: edgeValue,
                        top: 0,
                        right: edgeValue,
                        bottom: edgeValue),
                    child: Text("Credits and acknowledgement",
                        style: textBoxSubtitle),
                  ),
                  Padding(
                    padding: padSides,
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(
                            context, '/about');
                      },
                      child: Card(
                        shape: cardRadius,
                        elevation: cardElevation,
                        color: clrItemsTop,
                        child: ListTile(
                          title: Text('See more', style: textCardTitle , textAlign: TextAlign.center,),
                        ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
