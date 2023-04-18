import 'dart:math';

import 'package:capital_app/utils/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChartSection extends StatefulWidget {
  const PerformanceChartSection({Key? key}) : super(key: key);

  @override
  State<PerformanceChartSection> createState() =>
      _PerformanceChartSectionState();
}

class _PerformanceChartSectionState extends State<PerformanceChartSection>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  Tween<double> _rotationTween = Tween(begin: -pi, end: pi);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Performance Chart".toUpperCase(),
                style: const TextStyle(
                    color: MyThemePalette.blackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: MyThemePalette.blackColor.withOpacity(.39),
                      borderRadius: BorderRadius.circular(9)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: const Text("MORE",
                      style: TextStyle(
                          color: MyThemePalette.whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w800)))
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          // Container(
          //   child: Column(
          //     children: [
          //       CustomPaint(
          //         painter: SmoothPainter([1, 2, 3, 4, 6, 4, 2, 1]),
          //         child: Container(
          //           height: 100,
          //           width: double.infinity,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          AspectRatio(
            aspectRatio: 1.70,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 18,
                left: 12,
                top: 24,
                bottom: 12,
              ),
              child: LineChart(avgData()),
            ),
          ),
        ],
      ),
    );
  }
}

class SmoothPainter extends CustomPainter {
  const SmoothPainter(this.values);
  final List<double> values;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 2
      ..color = const Color(0xFF127389);
    final path = Path();

    final yMin = values.reduce(min);
    final yMax = values.reduce(max);
    final yHeight = yMax - yMin;
    final xAxisStep = size.width / values.length;
    var xValue = 0.0;
    for (var i = 0; i < values.length; i++) {
      final value = values[i];
      final yValue = yHeight == 0
          ? (0.5 * size.height)
          : ((yMax - value) / yHeight) * size.height;
      if (xValue == 0) {
        path.moveTo(xValue, yValue);
      } else {
        final previousValue = values[i - 1];
        final xPrevious = xValue - xAxisStep;
        final yPrevious = yHeight == 0
            ? (0.5 * size.height)
            : ((yMax - previousValue) / yHeight) * size.height;
        final controlPointX = xPrevious + (xValue - xPrevious) / 2;
        // HERE is the main line of code making your line smooth
        path.cubicTo(
            controlPointX, yPrevious, controlPointX, yValue, xValue, yValue);
      }
      xValue += xAxisStep;
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SmoothPainter oldDelegate) => oldDelegate.values != values;
}

List<Color> gradientColors = [
  MyThemePalette.blueColor,
  MyThemePalette.primaryColor
];

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: MyThemePalette.greyColor,
    fontSize: 12,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('JAN', style: style);
      break;
    case 1:
      text = const Text('FEB', style: style);
      break;
    case 2:
      text = const Text('MAR', style: style);
      break;
    case 3:
      text = const Text('APR', style: style);
      break;
    case 4:
      text = const Text('MAY', style: style);
      break;
    default:
      text = const Text('JUN', style: style);
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: MyThemePalette.greyColor,
    fontSize: 12,
  );
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0';
      break;
    case 1:
      text = '250';
      break;
    case 3:
      text = '500';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.left);
}

LineChartData avgData() {
  return LineChartData(
    lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: MyThemePalette.whiteColor,
          tooltipBorder:
              BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
        )),
    gridData: FlGridData(
      show: false,
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: Colors.transparent,
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitlesWidget: bottomTitleWidgets,
          interval: 1,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: leftTitleWidgets,
          reservedSize: 42,
          interval: 1,
        ),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    ),
    borderData: FlBorderData(
        border: const Border(bottom: BorderSide(), left: BorderSide())),
    minX: 0,
    maxX: 5,
    minY: 0,
    maxY: 3,
    lineBarsData: [
      LineChartBarData(
        spots: const [
          FlSpot(0, 2),
          FlSpot(1, 1.2),
          FlSpot(2, 3),
          FlSpot(3, 2.4),
          FlSpot(4.5, 2),
          FlSpot(5, 1),
        ],
        isCurved: true,
        gradient: LinearGradient(
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
          ],
        ),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!
                  .withOpacity(0.1),
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!
                  .withOpacity(0.1),
            ],
          ),
        ),
      ),
    ],
  );
}
