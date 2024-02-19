import 'package:covaid/services/database.dart';
import 'package:flutter/material.dart';
import 'package:covaid/globalvars.dart';
import 'package:covaid/widget/chart.dart';
import 'dart:collection';


class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {

  final dailyCasesSorted =
      LinkedHashMap.fromEntries(dailyCases.entries.toList().reversed);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        elevation: appBarElevation,
        title: Text(
          'Daily Cases',
          style: textAppBar,
        ),
        backgroundColor: clrAppBarr,
        shape: cardRadius,
      ),
      body: ListView(
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
                      'Collected Data',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Data collected over 30 days. Source: MOH website',
                      style: textCardSubtitle,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 170,
                    child: Padding(
                      padding: padSides,
                      child: SimpleTimeBarChart.latestData(),
                    ),
                    //child: Center(child: Icon(Icons.sms_failed_outlined),),
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
                      'Regression Analysis',
                      style: textCardTitle,
                    ),
                    subtitle: Text(
                      'Data estimated via Auto-Regression method',
                      style: textCardSubtitle,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 170,
                    child: Padding(
                      padding: padSides,
                      child: SimpleTimeSeriesChart.latestRegData(),
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
                            'Date',
                            style: textCardTitleRed,
                          )),
                          DataColumn(
                              label: Text(
                            'New Cases',
                            style: textCardTitleRed,
                          )),
                        ],
                        rows: dailyCasesSorted.entries
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
