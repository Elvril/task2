import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<String> images = [
    "assets/vegetables.png",
    "assets/oil.png",
    "assets/meat.png",
    "assets/backery.png",
    "assets/dairy.png",
    "assets/beverages.png",
    "assets/meat.png",
    "assets/backery.png",
    "assets/dairy.png",
    "assets/beverages.png",
  ];
  List<Color> colors = [
    const Color(0xff53B175),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xffF7A593),
    const Color(0xffD3B0E0),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
  ];
  List<String> titleProducts = [
    "Fresh Fruits \n & vegetables",
    "Cooking Oil \n &Ghee",
    "Meat & Fish",
    "Backery & Snacks",
    "Dairy & Eggs",
    "Beverages",
    "Meat & Fish",
    "Backery & Snacks",
    "Dairy & Eggs",
    "Beverages",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Find Products",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Questrial",
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        // shadowColor: Colors.transparent,

        elevation: 0,
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Color(0xff181B19),
                    size: 20,
                  ),
                  hintText: "Search Store",
                  fillColor: const Color(0xffF2F3F2),
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff7C7C7C),
                    fontFamily: "Questrial",
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          print("you selected: ${titleProducts[index]}");
                        },

                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              alignment: const Alignment(0, -0.5),
                            ),
                            border: Border.all(
                              width: 1,
                              color: index == 0 || index == 1
                                  ? colors[index].withOpacity(0.7)
                                  : colors[index].withOpacity(1.0),
                            ),
                            borderRadius: BorderRadius.circular(18),
                            color: index == 0 || index == 1
                                ? colors[index].withOpacity(0.1)
                                : colors[index].withOpacity(0.25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Expanded(child: SizedBox()),
                                Padding(
                                  padding: index == 0 || index == 1
                                      ? const EdgeInsets.only(bottom: 15)
                                      : const EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    titleProducts[index],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Questrial",
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
