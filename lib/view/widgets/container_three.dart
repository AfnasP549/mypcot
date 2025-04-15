import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech/core/constants/appcolor.dart';
import 'package:mypcot_infotech/view/widgets/custom_button.dart';

class ContainerThree extends StatelessWidget {
  const ContainerThree({super.key});

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
                color: Appcolor.tertiaryContainer,
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
                              'assets/customers-illustration-image.svg',
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        //!button
                        CustomButton(
                          bgColor: Appcolor.tertiaryButton,
                          text: 'View Customers',
                          onPressed: () {},
                          horizontalPadding: 30,
                          verticalPadding: 4,
                        ),
                      ],
                    ),

                    //! graph container
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 40),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Appcolor.primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        '1.8%',
                                        style: TextStyle(fontSize: 26),
                                      ),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image.asset('assets/Chart.png'),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //!card
                        Padding(
                          padding: const EdgeInsets.only(right: 35, top: 10),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 15,
                                    right: 35,
                                    bottom: 23,
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
                                          text: '\nCustomers',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //!round 4
                              Positioned(
                                top: 25,
                                left: 82,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 30.67,
                                      width: 30.67,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Appcolor.primaryButton,
                                        border: Border.all(
                                          width: 2,
                                          color: Appcolor.primaryButton,
                                        ),
                                      ),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          ClipRect(
                                            child: Image.asset(
                                              'assets/act5.png',
                                            ),
                                          ),
                                          Positioned(
                                            top: 18,
                                            left: 14,
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color:
                                                    Appcolor
                                                        .secondaryIconContainer,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //!round 5
                                    Positioned(
                                      left: 25,
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            height: 30.67,
                                            width: 30.67,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Appcolor.primaryButton,
                                              border: Border.all(
                                                width: 2,
                                                color: Appcolor.primaryButton,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                ClipRect(
                                                  child: Image.asset(
                                                    'assets/act3.png',
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 18,
                                                  left: 14,
                                                  child: Container(
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Appcolor
                                                              .secondaryIconContainer,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          //!round 6
                                          Positioned(
                                            left: 23,
                                            child: Container(
                                              height: 30.67,
                                              width: 30.67,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Appcolor.primaryButton,
                                                border: Border.all(
                                                  width: 2,
                                                  color: Appcolor.primaryButton,
                                                ),
                                              ),
                                              child: Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  ClipRect(
                                                    child: Image.asset(
                                                      'assets/act1.png',
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 18,
                                                    left: 14,
                                                    child: Container(
                                                      height: 10,
                                                      width: 10,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Appcolor
                                                                .secondaryIconContainer,
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                      color: Appcolor.tertiaryRectContainer,
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
                                        child: Image.asset('assets/act1.png'),
                                      ),
                                    ),
                                    //!add
                                    Positioned(
                                      top: 12,
                                      left: 27,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Appcolor.primaryColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: Icon(Icons.add,size: 16,),
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
          ],
        ),
      ),
    );
  }
}
