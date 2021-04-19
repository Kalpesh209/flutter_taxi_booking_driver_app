import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ErningBarChartWidget extends StatefulWidget {
  @override
  _ErningBarChartWidgetState createState() => _ErningBarChartWidgetState();
}

class _ErningBarChartWidgetState extends State<ErningBarChartWidget> {
  static var chartdisplay;

  @override
  void initState() {
    super.initState();
    setState(() {
      var data = [
        addcharts("M", 10),
        addcharts("TU", 12),
        addcharts("W", 30),
        addcharts("TH", 5),
        addcharts("F", 66),
        addcharts("SA", 60),
        addcharts("SU", 100),
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

  addcharts(this.lable, this.value);
}
