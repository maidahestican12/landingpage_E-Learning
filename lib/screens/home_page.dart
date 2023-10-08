import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/category_widget.dart';
import '../widgets/course_widget.dart';

class HomePage extends StatelessWidget {
  List<String> catNames = [
    "Category",
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'LeaderBoard',
  ];

  List<IconData> catIcons = [
    FontAwesomeIcons.listAlt,
    FontAwesomeIcons.video,
    FontAwesomeIcons.tasks,
    FontAwesomeIcons.store,
    FontAwesomeIcons.playCircle,
    FontAwesomeIcons.medal,
  ];

  List<String> imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15, right: 15, bottom: 15),
            decoration: BoxDecoration(
              color: Color(0xFF0F2C59),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.listAlt,
                      size: 30,
                      color: Colors.white,
                    ),
                    FaIcon(
                      FontAwesomeIcons.bell,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi Programmer",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: FaIcon(
                          FontAwesomeIcons.search,
                          size: 25,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      name: catNames[index],
                      iconData: catIcons[index],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0F2C59),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CourseWidget(
                      name: imgList[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF0F2C59),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.tasks), label: 'Courses'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart), label: 'WishList'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user), label: 'Account'),
        ],
      ),
    );
  }
}
