import 'package:flutter/material.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';

class NewOrderContainer extends StatelessWidget {
  const NewOrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
        color: Appcolor.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Appcolor.shadowColor,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New order created',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.primaryFont,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'New Order created with Order\nNo. 1345d423.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: Appcolor.quarternaryFont,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  '09:00 AM',
                  style: TextStyle(color: Appcolor.tertiaryFont),
                ),
                const SizedBox(height: 15),
                ClipRRect(child: Image.asset('assets/ic-arrow-narrow-up.png')),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Appcolor.tertiaryFont,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Image.asset('assets/new order created.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
