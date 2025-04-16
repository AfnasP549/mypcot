import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';
import 'package:mypcot_infotech/view/widgets/custom_button.dart';

class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Appcolor.secondaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //!image
                        Container(
                          decoration: BoxDecoration(
                            color: Appcolor.primaryRoundContainer,
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            child: SvgPicture.asset(
                              'assets/subscriptions-illustration-image.svg',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        //!button
                        CustomButton(
                          bgColor: Appcolor.secondaryButton,
                          text: 'Subcriptions',
                          onPressed: () {},
                          horizontalPadding: 30,
                          verticalPadding: 4,
                        ),
                      ],
                    ),

                    //! subcription container
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Appcolor.primaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10,
                                  right: 15,
                                  bottom: 10,
                                ),
                                child: Text.rich(
                                  TextSpan(
                                    text: '10',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' Active',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nSubcriptions',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //!card
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 15,
                                    right: 15,
                                    bottom: 13,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      text: '119',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ' Pending',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nDelivers',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //!stacked container
            Positioned(
              left: 180,
              top: -10,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Appcolor.secondaryRectContainer,
                    ),
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                           
                            children: [
                              TextSpan(
                                text: ' 03 ',
                                style: TextStyle(
                                  color: Appcolor.secondaryFont,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              TextSpan(
                                text: 'active ',
                                style: TextStyle(
                                  color: Appcolor.secondaryFont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          ' pending for',
                          style: TextStyle(
                            color: Appcolor.secondaryFont,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //! round 1
                  Positioned(
                    top: 40,
                    left: 18,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 36.67,
                          width: 36.67,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Appcolor.primaryButton,
                            border: Border.all(
                              width: 2,
                              color: Appcolor.primaryButton,
                            ),
                          ),
                          child: ClipRect(
                            child: Image.asset('assets/act5.png'),
                          ),
                        ),
                        //! round 2
                        Positioned(
                          left: 25,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 36.67,
                                width: 36.67,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Appcolor.primaryButton,
                                  border: Border.all(
                                    width: 2,
                                    color: Appcolor.primaryButton,
                                  ),
                                ),
                                child: ClipRect(
                                  child: Image.asset('assets/act3.png'),
                                ),
                              ),
                              //!round 3
                              Positioned(
                                left: 25,
                                child: Container(
                                  height: 36.67,
                                  width: 36.67,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Appcolor.primaryButton,
                                    border: Border.all(
                                      width: 2,
                                      color: Appcolor.primaryButton,
                                    ),
                                  ),
                                  child: ClipRect(
                                    child: Image.asset('assets/act1.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
