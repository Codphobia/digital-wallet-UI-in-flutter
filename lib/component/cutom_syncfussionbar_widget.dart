import 'package:digital_wallet/data/colors.dart';
import 'package:digital_wallet/data/typography.dart';
import 'package:digital_wallet/model/chartData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncFussionBar extends StatefulWidget {
  SyncFussionBar({Key? key}) : super(key: key);

  @override
  State<SyncFussionBar> createState() => _SyncFussionBarState();
}

class _SyncFussionBarState extends State<SyncFussionBar> {
  final List<ChartData> chartData = [
    ChartData('Feb', 480),
    ChartData('Mar', 550),
    ChartData('Apr', 490),
    ChartData('May', 600),
    ChartData('Jun', 560),
    ChartData('Jul', 520),
    ChartData('Aug', 430),
  ];
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      textStyle: kSubTitleTextStyle,
      color: kTitleTextColor,
      tooltipPosition: TooltipPosition.pointer,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0.0.w,
        tooltipBehavior: _tooltipBehavior,
        backgroundColor: kBackgroundColor,
        primaryYAxis: NumericAxis(
          isVisible: false,
        ),
        primaryXAxis: CategoryAxis(
          labelStyle: kTitleTextStyle,
          axisLine: AxisLine(width: 0),
          majorGridLines: MajorGridLines(width: 0),
          majorTickLines: MajorTickLines(width: 0),
          minorGridLines: MinorGridLines(width: 0),
          minorTickLines: MinorTickLines(width: 0),
        ),
        series: <CartesianSeries>[
          StackedColumnSeries<ChartData, String>(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.r),
                topRight: Radius.circular(7.r),
              ),
              color: kProgressColor,
              enableTooltip: true,
              dataSource: chartData,
              xValueMapper: (ChartData ch, _) => ch.x,
              yValueMapper: (ChartData ch, _) => ch.y)
        ],
      ),
    );
  }
}
