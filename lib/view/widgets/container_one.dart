import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';
import 'package:mypcot_infotech/view/widgets/custom_button.dart';

class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key});

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
                color: Appcolor.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
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
                              'assets/orders-illustration-image.svg',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        //!button
                        CustomButton(
                          bgColor: Appcolor.primaryButton,
                          text: 'Orderss',
                          onPressed: () {},
                          horizontalPadding: 45,
                          verticalPadding: 4,
                        ),
                      ],
                    ),

                    //!card 

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 15,
                                    right: 15,
                                    bottom: 23,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      text: '02',
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
                                          text: '\nOrders from',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //!round 4
                              Positioned(
                                top: 60,
                                left: 22,
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
                                        child: Image.asset('assets/act4.png'),
                                      ),
                                    ),
                                    //!round 5
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
                                          child: Image.asset('assets/act2.png'),
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
                  ],
                ),
              ),
            ),

            //!stacked container
            Positioned(
              left: 170,
              top: -10,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Appcolor.primaryRectContainer,
                    ),
                    child: Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'You have',
                            style: TextStyle(
                              color: Appcolor.secondaryFont,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: ' 3 ',
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
                          ' Orders from',
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
