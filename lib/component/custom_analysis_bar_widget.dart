import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:digital_wallet/model/sale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ShortBar extends StatelessWidget {
  const ShortBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 100.h,
            width: 160.w,
            child: SfCartesianChart(
                legend: Legend(
                  borderWidth: 0.0,
                ),
                plotAreaBorderWidth: 0.0,
                plotAreaBackgroundColor: Colors.transparent,
                borderColor: Colors.transparent,
                backgroundColor: kBackgroundColor,
                primaryYAxis: CategoryAxis(
                  labelStyle: kTitleTextStyle,
                  isVisible: false,
                ),
                primaryXAxis: CategoryAxis(
                  isVisible: false,
                  labelStyle: kTitleTextStyle,
                  axisLine: AxisLine(width: 0),
                  majorGridLines: MajorGridLines(width: 0),
                  majorTickLines: MajorTickLines(width: 0),
                ),
                series: <LineSeries<SalesData, int>>[
                  LineSeries<SalesData, int>(
                      color: kProgressColor,
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData(2010, 35),
                        SalesData(2011, 13),
                        SalesData(2012, 34),
                        SalesData(2013, 27),
                        SalesData(2014, 40)
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales)
                ])));
  }
}
