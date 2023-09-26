import 'package:flutter/material.dart';
import 'package:quiz/database/database.dart';

class Home55 extends StatefulWidget {
  const Home55({Key? key});

  @override
  State<Home55> createState() => _HomeState();
}

class _HomeState extends State<Home55> {
  int? selectedIndex;
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [Container(height: double.infinity,
        width: double.infinity,
        child: Image.asset("asset/bgimg.webp",fit: BoxFit.fill,),),
        
          
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Center(
                            child: Row(
                              children: [
                                 Text(
                        "Question:",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: const Color.fromARGB(255, 12, 12, 12)),
                        textAlign: TextAlign.left,
                      ),
                                Text(
                                  Database.quizQuestions[currentQuestionIndex]
                                          ['Question']
                                      .toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ]
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 25,
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                  print(selectedIndex);
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 330,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: selectedIndex == index
                                        ? selectedIndex ==
                                                Database.quizQuestions[
                                                        currentQuestionIndex]
                                                    ['correctAnswer']
                                            ? Colors.green
                                            : Colors.red
                                        : Colors.white),
                                child: Center(
                                  child: Text(
                                      Database.quizQuestions[currentQuestionIndex]
                                          ['options'][index]),
                                ),
                                // Change to white otherwise
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentQuestionIndex++;
                      selectedIndex = 5;
                    });

                    print(currentQuestionIndex);
                  },
                  child: Text("NEXT"),
                ),
              ),
              Text("thank you")
            ],
          ),
          
        
      ),
      
      );
    
  }
}

