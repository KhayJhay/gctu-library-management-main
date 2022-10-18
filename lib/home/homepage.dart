import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gctu_library_management/home/books_detail_page.dart';
import 'package:searchfield/searchfield.dart';

import '../constants.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> _suggestions = [
    'Princles of Programming - J.N Elvis',
    'Basic Discrete Mathematics - Nick Clarke',
    'Principles Of Accounting - Karien Hanson',
    'The Art of Coding - Francis Arthur',
    'Algorithms And Data Structures  -  John Loyke',
    'Software Development - Paul Heymann',
    'Cyber Security and Ethical Hacking - Anon Coleman',
    'C++ Programming - Bjarne Stroustrop',
    'Basic Networking - Alan Walker',
  ];
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgHome,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.white,width:2),
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/pic.jpg'), fit: BoxFit.cover)
                    ),
                  ),
                  Center(
                    child: Icon(CupertinoIcons.bell_fill, color: Colors.white,),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text("Hello Shadrach!", style: TextStyle(fontFamily: 'Poppins-Bold', color: Colors.white, fontSize: 22),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D3F54),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: SearchField(
                        suggestionState: Suggestion.expand,
                        suggestionAction: SuggestionAction.next,
                        suggestions:
                        _suggestions.map((e) => SearchFieldListItem(e)).toList(),
                        textInputAction: TextInputAction.next,
                        searchInputDecoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        controller: _searchController,
                        hint: 'Search for Books',
                        // initialValue: SearchFieldListItem(_suggestions[2], SizedBox()),
                        maxSuggestionsInViewPort: 3,
                        itemHeight: 65,
                        onSuggestionTap: (x) {},
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recommended Books",
                        style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          fontSize: 16,
                          color: Colors.white
                        ),),
                      Row(
                        children: [
                          Text("See all",
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              color: Colors.grey,
                              fontSize: 13,
                            ),),
                          Icon(Icons.chevron_right, color: Colors.grey,),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 25),
                  child: Container(
                      height: 280,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Detailed_Page(
                                    bookTitle: 'Encyclopaedia Of Computer Science',
                                    bookDesc: "Computer science combines the principles of engineering,"
                                        " mathematics and science to study and develop computers, "
                                        "networks, hardware, software, databases and much more. "
                                        "Because of that, there is a wide range of potential "
                                        "careers within the field, from software engineering "
                                        "to computer programming or system analysis.",
                                    bookImage: Image.asset('assets/images/book5.jpg'),
                                )));
                              },
                              child: Container(
                                width: _width*0.33,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.06),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset('assets/images/book5.jpg', fit: BoxFit.cover,)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Detailed_Page(
                                  bookTitle: 'C++ Programming  Language',
                                  bookDesc: 'C++ is a general-purpose programming language created by '
                                      'Danish computer scientist Bjarne Stroustrup '
                                      'as an extension of the C programming language,',
                                  bookImage: Image.asset('assets/images/Book2.jpg'),
                                )));
                              },
                              child: Container(
                                width: _width*0.33,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.06),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset('assets/images/Book2.jpg', fit: BoxFit.cover,)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Detailed_Page(
                                  bookTitle: "Java Beginner's Guide",
                                  bookDesc: "Java is a platform-independent, object-oriented programming language (OOP). "
                                      "It is not to be confused with JavaScript, a scripting"
                                      " language used to create dynamic web pages. Due to its "
                                      "reliability and ease of use, Java is one of "
                                      "the most popular programming languages in the world.",
                                  bookImage: Image.asset('assets/images/book3.jpg'),
                                )));
                              },
                              child: Container(
                                width: _width*0.33,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.06),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset('assets/images/book3.jpg', fit: BoxFit.cover,)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Detailed_Page(
                                  bookTitle: "Begin to  code with Python",
                                  bookDesc: 'Python is a high-level, general-purpose programming language.'
                                      'Its design philosophy emphasizes code readability with the use '
                                      'of significant indentation. Python is dynamically-typed and '
                                      'garbage-collected. It supports multiple programming paradigms, '
                                      'including structured, object-oriented and functional programming.',
                                  bookImage: Image.asset('assets/images/book1.jpg', fit: BoxFit.cover,),
                                )));
                              },
                              child: Container(
                                width: _width*0.33,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.06),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                      ),
                                    ]
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset('assets/images/book1.jpg', fit: BoxFit.cover,)),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pick from your course",
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 16,
                            color: Colors.white
                        ),),
                      Row(
                        children: [
                          Text("See all",
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              color: Colors.grey,
                              fontSize: 13,
                            ),),
                          Icon(Icons.chevron_right, color: Colors.grey,),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 25),
                  child: Container(
                      height: 150,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage('assets/images/cos2.jpg'), fit: BoxFit.cover)
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                 color: Color(0xFFE9665E).withOpacity(0.88)
                                ),
                                child: Icon(CupertinoIcons.money_dollar, color: Colors.white,size: 40,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage('assets/images/cos1.jpg'), fit: BoxFit.cover)
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xFF7D2AE7).withOpacity(0.88)
                                ),
                                child: Icon(CupertinoIcons.brightness_solid, color: Colors.white,size: 40,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage('assets/images/cos3.jpg'), fit: BoxFit.cover)
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.blue.withOpacity(0.88)
                                ),
                                child: Icon(CupertinoIcons.command, color: Colors.white,size: 40,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(image: AssetImage('assets/images/cos4.jpg'), fit: BoxFit.cover)
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.green.withOpacity(0.88)
                                ),
                                child: Icon(CupertinoIcons.bolt_horizontal_fill, color: Colors.white,size: 40,),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Your Recently Borrowed Books",
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 16,
                            color: Colors.white
                        ),),
                      Row(
                        children: [
                          Text("See all",
                            style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              color: Colors.grey,
                              fontSize: 13,
                            ),),
                          Icon(Icons.chevron_right, color: Colors.grey,),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 25),
                  child: Container(
                      height: 200,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.06),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ]
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/images/book1.jpg', fit: BoxFit.cover,)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.06),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ]
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/images/book3.jpg', fit: BoxFit.cover,)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.06),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ]
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/images/book4.jpg', fit: BoxFit.cover,)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0,bottom:25, right: 20),
                            child: Container(
                              width: _width*0.23,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.06),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                    ),
                                  ]
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/images/book6.jpg', fit: BoxFit.cover,)),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
