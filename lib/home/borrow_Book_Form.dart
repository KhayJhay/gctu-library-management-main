// @dart=2.9
import 'package:flutter/material.dart';

class BorrowBookForm extends StatefulWidget {
  @override
  _BorrowBookFormState createState() => _BorrowBookFormState();
}

class _BorrowBookFormState extends State<BorrowBookForm> {
  final _formKey = GlobalKey<FormState>();
  String _studentId;
  String _fullName;
  DateTime _dateBorrowed;
  DateTime _dueDate;
  String _bookCategory;
  String _borrowId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrow Book Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Student ID'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a student ID';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _studentId = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Full Name'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _fullName = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date Borrowed'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the date borrowed';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.datetime,
                  onSaved: (value) {
                    _dateBorrowed = DateTime.parse(value);
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Due Date'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the due date';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.datetime,
                  onSaved: (value) {
                    _dueDate = DateTime.parse(value);
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Book Category'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the book category';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _bookCategory = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Borrow ID'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the borrow ID';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _borrowId = value;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      // TODO: Handle the form submission
                      print('Student ID: $_studentId');
                      print('Full Name: $_fullName');
                      print('Date Borrowed: $_dateBorrowed');
                      print('Due Date: $_dueDate');
                      print('Book Category: $_bookCategory');
                      print('Borrow ID: $_borrowId');
                    }
                  },
                  child: Text('Borrow Book'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
