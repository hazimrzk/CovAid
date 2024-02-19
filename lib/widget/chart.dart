import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:covaid/services/database.dart';

class SimpleTimeSeriesChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleTimeSeriesChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      dateTimeFactory: const charts.LocalDateTimeFactory(),
      domainAxis: new charts.DateTimeAxisSpec(
        tickProviderSpec: charts.DayTickProviderSpec(increments: [20]),
        tickFormatterSpec: new charts.AutoDateTimeTickFormatterSpec(
          day: new charts.TimeFormatterSpec(
              format: 'MMMM', transitionFormat: 'MMMM', noonFormat: 'MMMM'),
        ),
        renderSpec: new charts.SmallTickRendererSpec(
          labelStyle: new charts.TextStyleSpec(
              fontSize: 13, color: charts.MaterialPalette.white),
          lineStyle:
              new charts.LineStyleSpec(color: charts.MaterialPalette.white),
        ),
      ),
      primaryMeasureAxis: new charts.NumericAxisSpec(
        showAxisLine: true,
        tickProviderSpec:
            new charts.BasicNumericTickProviderSpec(zeroBound: false),
        renderSpec: new charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
                fontSize: 13, // size in Pts.
                color: charts.MaterialPalette.white),
            lineStyle: new charts.LineStyleSpec(
                color: charts.MaterialPalette.transparent)),
      ),
    );
  }

  factory SimpleTimeSeriesChart.latestRegData() {
    return new SimpleTimeSeriesChart(
      _generateLatestRegData(),
      animate: true,
    );
  }

  static List<charts.Series<DailyCasesReg, DateTime>> _generateLatestRegData() {
    List<DailyCasesReg> data = [];
    dailyCasesReg.forEach((date, cases) {
      List<String> dateStr = date.split("-");
      List<int> dateInt = dateStr.map(int.parse).toList();
      data.add(new DailyCasesReg(
          new DateTime(dateInt[0], dateInt[1], dateInt[2]), cases));
    });

    return [
      new charts.Series<DailyCasesReg, DateTime>(
        id: 'Daily-Cases',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (DailyCasesReg data, _) => data.date,
        measureFn: (DailyCasesReg data, _) => data.cases,
        data: data,
      )
    ];
  }
}

class SimpleTimeBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleTimeBarChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      domainAxis: new charts.DateTimeAxisSpec(
        tickProviderSpec: charts.DayTickProviderSpec(increments: [20]),
        tickFormatterSpec: new charts.AutoDateTimeTickFormatterSpec(
          day: new charts.TimeFormatterSpec(
              format: 'MMMM', transitionFormat: 'MMMM', noonFormat: 'MMMM'),
        ),
        renderSpec: new charts.SmallTickRendererSpec(
          labelStyle: new charts.TextStyleSpec(
              fontSize: 13, color: charts.MaterialPalette.white),
          lineStyle:
              new charts.LineStyleSpec(color: charts.MaterialPalette.white),
        ),
      ),
      primaryMeasureAxis: new charts.NumericAxisSpec(
        showAxisLine: true,
        tickProviderSpec:
            new charts.BasicNumericTickProviderSpec(zeroBound: false),
        renderSpec: new charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
                fontSize: 13, // size in Pts.
                color: charts.MaterialPalette.white),
            lineStyle: new charts.LineStyleSpec(
                color: charts.MaterialPalette.transparent)),
      ),
      defaultRenderer: new charts.BarRendererConfig<DateTime>(),
      defaultInteractions: false,
      behaviors: [new charts.SelectNearest(), new charts.DomainHighlighter()],
    );
  }

  factory SimpleTimeBarChart.latestData() {
    return new SimpleTimeBarChart(
      _generateLatestData(),
      animate: true,
    );
  }

  static List<charts.Series<DailyCases, DateTime>> _generateLatestData() {
    List<DailyCases> data = [];
    dailyCases.forEach((date, cases) {
      List<String> dateStr = date.split("-");
      List<int> dateInt = dateStr.map(int.parse).toList();
      data.add(new DailyCases(
          new DateTime(dateInt[0], dateInt[1], dateInt[2]), cases));
    });

    return [
      new charts.Series<DailyCases, DateTime>(
        id: 'Daily-Cases',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (DailyCases data, _) => data.date,
        measureFn: (DailyCases data, _) => data.cases,
        data: data,
      )
    ];
  }
}

class DailyCases {
  final DateTime date;
  final int cases;

  DailyCases(this.date, this.cases);
}

class DailyCasesReg {
  final DateTime date;
  final double cases;

  DailyCasesReg(this.date, this.cases);
}
