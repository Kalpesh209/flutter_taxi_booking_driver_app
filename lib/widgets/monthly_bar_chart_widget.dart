import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class MonthlyYBarChartWidget extends StatefulWidget {
  @override
  _ErningBarChartWidgetState createState() => _ErningBarChartWidgetState();
}

class _ErningBarChartWidgetState extends State<MonthlyYBarChartWidget> {
  static var chartdisplay;

  @override
  void initState() {
    super.initState();
    setState(() {
      var data = [
        addcharts("JA", 10),
        addcharts("F", 12),
        addcharts("MAR", 30),
        addcharts("A", 5),
        addcharts("MAY", 44),
        addcharts("JUN", 60),
        addcharts("JUL", 46),
        addcharts("AU", 0),
        addcharts("S", 23),
        addcharts("O", 99),
        addcharts("N", 34),
        addcharts("D", 78),
      ];
      var series = [
        charts.Series(
          domainFn: (addcharts addcharts, _) => addcharts.lable,
          measureFn: (addcharts addcharts, _) => addcharts.value,
          id: "addcharts",
          data: data,
        ),
      ];
      chartdisplay = charts.BarChart(
        series,
        animationDuration: Duration(milliseconds: 800),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        height: 200,
        child: chartdisplay,
      )),
    );
  }
}

class addcharts {
  final String lable;
  final int value;

  addcharts(
    this.lable,
    this.value,
  );
}
