import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';

class CalenderHeader extends StatelessWidget {
  const CalenderHeader({super.key});

  @override
  Widget build(BuildContext context) {
 
    final double screenWidth = MediaQuery.of(context).size.width;

    double paddingHorizontal;
    double paddingVertical;
    double titleFontSize;
    double todayFontSize;
    double timelineFontSize;
    double janFontSize;
    double iconSize;
    double containerBorderRadius;
    double svgSize;
    double containerSpacing;
    double timelineIconSpacing;
    double maxContainerWidth;

    if (screenWidth <= 360) {
      // Compact screens
      paddingHorizontal = 8.0;
      paddingVertical = 4.0;
      titleFontSize = 14.0;
      todayFontSize = 18.0;
      timelineFontSize = 12.0;
      janFontSize = 12.0;
      iconSize = 18.0;
      containerBorderRadius = 20.0;
      svgSize = 16.0;
      containerSpacing = 6.0;
      timelineIconSpacing = 8.0;
      maxContainerWidth = 90.0;
    } else if (screenWidth <= 600) {
      // Medium screens 
      paddingHorizontal = 10.0;
      paddingVertical = 5.0;
      titleFontSize = 15.0;
      todayFontSize = 20.0;
      timelineFontSize = 13.0;
      janFontSize = 13.0;
      iconSize = 20.0;
      containerBorderRadius = 24.0;
      svgSize = 18.0;
      containerSpacing = 8.0;
      timelineIconSpacing = 12.0;
      maxContainerWidth = 110.0;
    } else {
      // Large screens
      paddingHorizontal = 14.0;
      paddingVertical = 6.0;
      titleFontSize = 17.0;
      todayFontSize = 24.0;
      timelineFontSize = 15.0;
      janFontSize = 15.0;
      iconSize = 24.0;
      containerBorderRadius = 28.0;
      svgSize = 22.0;
      containerSpacing = 12.0;
      timelineIconSpacing = 16.0;
      maxContainerWidth = 140.0;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: screenWidth <= 360 ? 3 : 2,
          child: Text.rich(
            TextSpan(
              text: 'January, 23 2021',
              style: TextStyle(
                fontSize: titleFontSize,
                color: Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black,
              ),
              children: [
                TextSpan(
                  text: '\nToday',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: todayFontSize,
                        fontWeight: FontWeight.bold,
                      ) ??
                      TextStyle(
                        fontSize: todayFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxContainerWidth,
            minWidth: 60.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(containerBorderRadius),
              color: Appcolor.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Appcolor.shadowColor,
                  spreadRadius: 1,
                  blurRadius: screenWidth <= 360 ? 2 : 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: paddingVertical,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Timeline',
                      style: TextStyle(
                        fontSize: timelineFontSize,
                        color: Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: timelineIconSpacing),
                  Icon(
                    Icons.arrow_drop_down,
                    size: iconSize,
                    color: Appcolor.primaryIcon,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: containerSpacing),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxContainerWidth,
            minWidth: 60.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(containerBorderRadius),
              color: Appcolor.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Appcolor.shadowColor,
                  spreadRadius: 1,
                  blurRadius: screenWidth <= 360 ? 2 : 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingHorizontal,
                vertical: paddingVertical,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(svgSize / 2),
                    child: SvgPicture.asset(
                      'assets/Group 911.svg',
                      width: svgSize,
                      height: svgSize,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: screenWidth <= 360 ? 4 : 6),
                  Flexible(
                    child: Text(
                      'Jan, 2021',
                      style: TextStyle(
                        fontSize: janFontSize,
                        color: Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}