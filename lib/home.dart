import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

List<Icon> cardIcon = [
  Icon(Icons.description, color: Color(0xFFEAB34F), size: 35),
  Icon(Icons.work, color: Color(0xFFDF4D5A), size: 35),
  Icon(Icons.chat, color: Color(0xFF4390D5), size: 35),
  Icon(Icons.place, color: Color(0xFF5CC766), size: 35),
  Icon(Icons.groups, color: Color(0xFFA342E5), size: 35),
  Icon(Icons.apple, color: Color(0xFF2351B9), size: 35)
];
List<double> cardProg = [140, 35, 105, 35, 105, 70];
List<int> cardVal = [4, 1, 3, 1, 3, 2];
List<String> cardNames = ["Basics", "Occupations", "Conversation", "Places", "Family members", "Foods"];
List<Color> cardColors = [
  Color(0xFFEAB34F),
  Color(0xFFDF4D5A),
  Color(0xFF4390D5),
  Color(0xFF5CC766),
  Color(0xFFA342E5),
  Color(0xFF2351B9)
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              //stack circles
              Positioned(
                left: -MediaQuery.sizeOf(context).width * 0.25,
                right: -MediaQuery.sizeOf(context).width * 0.25,
                top: -MediaQuery.sizeOf(context).height * 0.2,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  width: MediaQuery.sizeOf(context).width * 1.2,
                  decoration: const BoxDecoration(color: Color(0xFFF2B049), shape: BoxShape.circle),
                ),
              ),
              Positioned(
                left: -150,
                top: MediaQuery.sizeOf(context).height * 0.07,
                child: Container(
                  width: 400,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: const BoxDecoration(color: Color(0xFFF5BA4A), shape: BoxShape.circle),
                ),
              ),
              Positioned(
                right: -130,
                top: MediaQuery.sizeOf(context).height * 0.09,
                child: Container(
                  width: 300,
                  height: MediaQuery.sizeOf(context).height * 0.18,
                  decoration: const BoxDecoration(color: Color(0xFFF5BA4A), shape: BoxShape.circle),
                ),
              ),
              Positioned(
                right: 70,
                top: 130,
                child: Container(
                  width: 100,
                  height: MediaQuery.sizeOf(context).height * 0.18,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xFFF5BA4A), width: 3)),
                ),
              ),
              Positioned(
                right: -90,
                top: -30,
                child: Container(
                  width: 200,
                  height: MediaQuery.sizeOf(context).height * 0.18,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xFFF5BA4A), width: 3)),
                ),
              ),
            ],
          ),
          //MAINN
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Text(
                        'Curse',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                  //top matter
                  Row(
                    children: [
                      //first column
                      Padding(
                        padding: const EdgeInsets.only(left: 35, top: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Spanish',
                              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontSize: 40),
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 1),
                                    child: Text(
                                      'Beginner',
                                      style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFFECBC5F)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2, left: 3),
                                    child: Icon(Icons.arrow_drop_down, color: Color(0xFFECBC5F)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  '💎💎',
                                  style: TextStyle(fontSize: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 3),
                                  child: Text(
                                    ' 2 Milestones',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      //progress bar
                      Padding(
                        padding: const EdgeInsets.only(left: 70, bottom: 20),
                        child: CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 5,
                          percent: 0.40,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '43%',
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              Text(
                                'Completed',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                              )
                            ],
                          ),
                          progressColor: Colors.white,
                          backgroundColor: Colors.white,
                          backgroundWidth: 1,
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                      )
                    ],
                  ),
                  //GRID VIEW
                  SizedBox(
                    height: 800,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return createCard(index);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container createCard(
    int index,
  ) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(4, 4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(2, 5),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: cardIcon[index],
            ),
          ),
          Text(
            cardNames[index],
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${cardVal[index]} ',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Text(
                  '/ 5',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5,
                width: cardProg[index],
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: cardColors[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
