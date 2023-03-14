import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gctu_library_management/constants.dart';
import 'package:gctu_library_management/home/borrow_Book_Form.dart';

class Detailed_Page extends StatefulWidget {
  final String bookTitle;
  final String bookDesc;
  final Image bookImage;
  const Detailed_Page({
    Key? key,
    required this.bookTitle,
    required this.bookDesc,
    required this.bookImage,
  }) : super(key: key);

  @override
  State<Detailed_Page> createState() => _Detailed_PageState();
}

class _Detailed_PageState extends State<Detailed_Page> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgHome,
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: _height / 1.48,
              width: _width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.chevron_back,
                            color: bgHome,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.bookmark,
                            color: bgHome,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: _width * 0.43,
                          height: 260,
                          decoration: BoxDecoration(
                            color: bgHome,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: widget.bookImage,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            widget.bookTitle,
                            style: TextStyle(
                                fontSize: 16,
                                color: bgHome,
                                fontFamily: 'Poppins-Bold'),
                          ),
                        ),
                        Text(
                          'by Bjarne Straustroupe',
                          style: TextStyle(
                              fontSize: 13,
                              color: bgHome,
                              fontFamily: 'Poppins-Light'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Light'),
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Bold'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Pages',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Light'),
                                ),
                                Text(
                                  '300',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Bold'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Language',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Light'),
                                ),
                                Text(
                                  'ENG',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Bold'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Category',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Light'),
                                ),
                                Text(
                                  'IT',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: bgHome,
                                      fontFamily: 'Poppins-Bold'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BorrowBookForm(),
                                ));
                          },
                          child: Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                                color: bgHome,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              'Borrow Now',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Light'),
                            )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What's it about?",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Poppins-Bold'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  widget.bookDesc,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Poppins-Light'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
