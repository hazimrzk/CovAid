import 'package:covaid/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covaid/globalvars.dart';

class StateShow extends StatefulWidget {
  @override
  _StateShowState createState() => _StateShowState();
}

class _StateShowState extends State<StateShow> {
  String stateName = "State Cases";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        title: Text(
          'State',
          style: textAppBar,
        ),
        elevation: appBarElevation,
        backgroundColor: clrAppBarr,
        shape: cardRadius,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: edgeValue,
            child: Center(),
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
                      'Case Severity',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Deeper red indicates higher cases number',
                      style: textCardSubtitle,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: edgeValue,
                    child: Center(),
                  ),
                  Padding(
                    padding: padSides,
                    child: Image.asset("assets/images/map_indicator_big.png"),
                  ),
                  Padding(
                    padding: padSides,
                    child: Card(
                      elevation: cardElevation,
                      shape: cardRadius,
                      color: clrItemsTop,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: edgeValue,
                            child: Center(),
                          ),
                          Padding(
                            padding: padSides,
                            child:
                                Text('West Malaysia', style: textBoxSubtitle),
                          ),
                          Padding(
                            padding: padSides,
                            child: Image.network(
                                'https://storage.googleapis.com/covaid-eeum.appspot.com/peninsular.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: padSides,
                    child: Card(
                      elevation: cardElevation,
                      shape: cardRadius,
                      color: clrItemsTop,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: edgeValue,
                            child: Center(),
                          ),
                          Padding(
                            padding: padSides,
                            child:
                                Text('East Malaysia', style: textBoxSubtitle),
                          ),
                          Padding(
                            padding: padSides,
                            child: Image.network(
                                'https://storage.googleapis.com/covaid-eeum.appspot.com/east.png'),
                          )
                        ],
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
                      'Daily Stats',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Statistics recorded in compact, tabular form',
                      style: textCardSubtitle,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: padSides,
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                            'State',
                            style: textCardTitleRed,
                          )),
                          DataColumn(
                              label: Text(
                            'New Cases',
                            style: textCardTitleRed,
                          )),
                        ],
                        rows: stateCases.entries
                            .map((e) => DataRow(cells: [
                                  DataCell(Text(
                                    e.key.toString(),
                                    style: textCardSubtitle,
                                  )),
                                  DataCell(Text(
                                    e.value.toString(),
                                    style: textCardSubtitle,
                                  )),
                                ]))
                            .toList(),
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
