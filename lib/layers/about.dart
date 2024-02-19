import 'package:flutter/material.dart';
import 'package:covaid/globalvars.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        title: Text(
          'About',
          style: textAppBar,
        ),
        backgroundColor: clrAppBarr,
        elevation: appBarElevation,
        shape: cardRadius,
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
              elevation: cardElevation,
              shape: cardRadius,
              color: clrItems,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Teams Members',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Members who contributed towards this project',
                      style: textCardSubtitle,
                    ),
                  ),
                  Padding(
                    padding: padSides,
                    child: Card(
                      elevation: cardElevation,
                      shape: cardRadius,
                      color: clrItemsTop,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: team12.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(
                          height: 0,
                        ),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              team12[index].name,
                              style: textBoxTitle,
                              textScaleFactor: 0.85,
                            ),
                            subtitle: Text(
                              team12[index].id,
                              style: textBoxSubtitle,
                              textScaleFactor: 0.85,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: padSides,
            child: Card(
              elevation: cardElevation,
              shape: cardRadius,
              color: clrItems,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Source',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Data was taken from these sources',
                      style: textCardSubtitle,
                    ),
                  ),
                  Padding(
                    padding: padSides,
                    child: Card(
                      elevation: cardElevation,
                      shape: cardRadius,
                      color: clrItemsTop,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: sourceData.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(
                          height: 0,
                        ),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              sourceData[index].name,
                              style: textBoxTitle,
                              textScaleFactor: 0.85,
                            ),
                            subtitle: Text(
                              sourceData[index].link,
                              style: textBoxSubtitle,
                              textScaleFactor: 0.85,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: padSides,
            child: Card(
              elevation: cardElevation,
              shape: cardRadius,
              color: clrItems,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Tools',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Software and service used',
                      style: textCardSubtitle,
                    ),
                  ),
                  Padding(
                    padding: padSides,
                    child: Card(
                      elevation: cardElevation,
                      shape: cardRadius,
                      color: clrItemsTop,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: tools.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(
                          height: 0,
                        ),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              tools[index].name,
                              style: textBoxTitle,
                              textScaleFactor: 0.85,
                            ),
                            subtitle: Text(
                              tools[index].function,
                              style: textBoxSubtitle,
                              textScaleFactor: 0.85,
                            ),
                          );
                        },
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
