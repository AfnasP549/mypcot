import 'package:flutter/material.dart';

const Color _calendarHighlightColor = Color(0xFF4CAF50); // or use your custom color

class CalenderBody extends StatelessWidget {
  const CalenderBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width for responsive calculations
    final double screenWidth = MediaQuery.of(context).size.width;

    // Responsive styling based on breakpoints
    double dayFontSize;
    double dateFontSize;
    double columnSpacing;
    double dotSize;
    double columnWidth;

    if (screenWidth <= 360) {
      // Compact screens (e.g., 360x800px)
      dayFontSize = 10.0;
      dateFontSize = 12.0;
      columnSpacing = 4.0;
      dotSize = 6.0;
      columnWidth = screenWidth / 8.5; // Tight fit for 7 columns
    } else if (screenWidth <= 600) {
      // Medium screens (e.g., 395px, 600px)
      dayFontSize = 12.0;
      dateFontSize = 14.0;
      columnSpacing = 6.0;
      dotSize = 8.0;
      columnWidth = screenWidth / 8; // Slightly more room
    } else {
      // Large screens (e.g., 900px)
      dayFontSize = 14.0;
      dateFontSize = 16.0;
      columnSpacing = 8.0;
      dotSize = 10.0;
      columnWidth = screenWidth / 7.5; // Spacious layout
    }

    final List<String> days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    final List<String> dates = ['20', '21', '22', '23', '24', '25', '26'];
    const int selectedDay = 3; // Thursday (index 3)

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(7, (index) {
        bool isSelected = index == selectedDay;

        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: columnWidth,
            minWidth: 40.0, // Prevent columns from shrinking too much
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                days[index],
                style: TextStyle(
                  fontSize: dayFontSize,
                  color: isSelected ? _calendarHighlightColor : Colors.grey,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: columnSpacing),
              Text(
                dates[index],
                style: TextStyle(
                  fontSize: dateFontSize,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? _calendarHighlightColor : Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: columnSpacing),
              if (isSelected)
                Container(
                  width: dotSize,
                  height: dotSize,
                  decoration: BoxDecoration(
                    color: _calendarHighlightColor,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}