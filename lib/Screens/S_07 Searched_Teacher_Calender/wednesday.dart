import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

var times = {
  'v1': 'false',
  'v2': 'false',
  'v3': 'false',
  'v4': 'false',
  'v5': 'false',
  'v6': 'false',
  'v7': 'false',
  'v8': 'false',
  'v9': 'false',
  'v10': 'false',
  'v11': 'false',
  'v12': 'false',
  'v13': 'false',
  'v14': 'false',
  'v15': 'false',
  'v16': 'false',
  'v17': 'false',
  'v18': 'false',
  'v19': 'false',
  'v20': 'false',
  'v21': 'false',
  'v22': 'false',
  'v23': 'false',
  'v24': 'false',
  'v25': 'false',
  'v26': 'false',
  'v27': 'false',
  'v28': 'false',
  'v29': 'false',
  'v30': 'false',
  'v31': 'false',
  'v32': 'false',
  'v33': 'false',
  'v34': 'false',
  'v35': 'false',
  'v36': 'false',
  'v37': 'false',
  'v38': 'false',
  'v39': 'false'
};
int largestnum = 0;
int smallestnum = 39;

void largestButton() {
  largestnum = 0;
  for (int i = 1; i <= times.length; i++) {
    if (times['v$i'] == "true" && i > largestnum) {
      largestnum = i;
    }
  }
}

void smalestButton() {
  smallestnum = 39;
  for (int i = 1; i <= times.length; i++) {
    if (times['v$i'] == "true" && i < smallestnum) {
      smallestnum = i;
    }
  }
}

void mulButton() {
  if (largestnum != smallestnum) {
    for (int i = smallestnum; i <= largestnum; i++) {
      times['v$i'] = 'true';
    }
  }
}

void nMulButton(int current) {
  if (times['v$current'] == "true") {
    if (current != largestnum)
      for (int i = largestnum; i > current; i--) {
        times['v$i'] = 'false';
      }
    largestButton();
    smalestButton();
  } else if (times['v$current'] == "false") {
    times['v$current'] = "true";
    largestButton();
    smalestButton();
    for (int i = smallestnum; i <= largestnum; i++) {
      times['v$i'] = 'true';
    }
  }
}

bool parseBool(String text) {
  if (text == 'true') {
    return true;
  } else {
    return false;
  }
}

String parseString(bool bol) {
  if (bol == true)
    return "true";
  else
    return "false";
}

class Wednesday extends StatefulWidget {
  @override
  State<Wednesday> createState() => _WednesdayState();
}

@override
void initState() {}

class _WednesdayState extends State<Wednesday> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(children: [
          Column(children: [
            //إنشاء حساب مدرس

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(1);
                        });
                      },
                      child: Text(
                        '7:00',
                        style: TextStyle(
                          color: (times['v1'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v1'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v1'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v1'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(2);
                        });
                      },
                      child: Text(
                        '7:30',
                        style: TextStyle(
                          color: (times['v2'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v2'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v2'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v2'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(3);
                        });
                      },
                      child: Text(
                        '8:00',
                        style: TextStyle(
                          color: (times['v3'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v3'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v3'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v3'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(4);
                        });
                      },
                      child: Text(
                        '8:30',
                        style: TextStyle(
                          color: (times['v4'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v4'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v4'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v4'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(5);
                        });
                      },
                      child: Text(
                        '9:00',
                        style: TextStyle(
                          color: (times['v5'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v5'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v5'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v5'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(6);
                        });
                      },
                      child: Text(
                        '9:30',
                        style: TextStyle(
                          color: (times['v6'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v6'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v6'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v6'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(7);
                        });
                      },
                      child: Text(
                        '10:00',
                        style: TextStyle(
                          color: (times['v7'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v7'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v7'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v7'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(8);
                        });
                      },
                      child: Text(
                        '10:30',
                        style: TextStyle(
                          color: (times['v8'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v8'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v8'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v8'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(9);
                        });
                      },
                      child: Text(
                        '11:00',
                        style: TextStyle(
                          color: (times['v9'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v9'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v9'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v9'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(10);
                        });
                      },
                      child: Text(
                        '11:30',
                        style: TextStyle(
                          color: (times['v10'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v10'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v10'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v10'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(11);
                        });
                      },
                      child: Text(
                        '12:00',
                        style: TextStyle(
                          color: (times['v11'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v11'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v11'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v11'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(12);
                        });
                      },
                      child: Text(
                        '12:30',
                        style: TextStyle(
                          color: (times['v12'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v12'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v12'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v12'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(13);
                        });
                      },
                      child: Text(
                        '13:00',
                        style: TextStyle(
                          color: (times['v13'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v13'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v13'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v13'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(14);
                        });
                      },
                      child: Text(
                        '13:30',
                        style: TextStyle(
                          color: (times['v14'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v14'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v14'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v14'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(15);
                        });
                      },
                      child: Text(
                        '14:00',
                        style: TextStyle(
                          color: (times['v15'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v15'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v15'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v15'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(16);
                        });
                      },
                      child: Text(
                        '14:30',
                        style: TextStyle(
                          color: (times['v16'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v16'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v16'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v16'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(17);
                        });
                      },
                      child: Text(
                        '15:00',
                        style: TextStyle(
                          color: (times['v17'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v17'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v17'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v17'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(18);
                        });
                      },
                      child: Text(
                        '15:30',
                        style: TextStyle(
                          color: (times['v18'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v18'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v18'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v18'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(19);
                        });
                      },
                      child: Text(
                        '16:00',
                        style: TextStyle(
                          color: (times['v19'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v19'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v19'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v19'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(20);
                        });
                      },
                      child: Text(
                        '16:30',
                        style: TextStyle(
                          color: (times['v20'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v20'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v20'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v20'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(21);
                        });
                      },
                      child: Text(
                        '17:00',
                        style: TextStyle(
                          color: (times['v21'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v21'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v21'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v21'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(22);
                        });
                      },
                      child: Text(
                        '17:30',
                        style: TextStyle(
                          color: (times['v22'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v22'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v22'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v22'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(23);
                        });
                      },
                      child: Text(
                        '18:00',
                        style: TextStyle(
                          color: (times['v23'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v23'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v23'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v23'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(24);
                        });
                      },
                      child: Text(
                        '18:30',
                        style: TextStyle(
                          color: (times['v24'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v24'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v24'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v24'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(25);
                        });
                      },
                      child: Text(
                        '19:00',
                        style: TextStyle(
                          color: (times['v25'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v25'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v25'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v25'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(26);
                        });
                      },
                      child: Text(
                        '19:30',
                        style: TextStyle(
                          color: (times['v26'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v26'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v26'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v26'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(27);
                        });
                      },
                      child: Text(
                        '20:00',
                        style: TextStyle(
                          color: (times['v27'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v27'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v27'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v27'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(28);
                        });
                      },
                      child: Text(
                        '20:30',
                        style: TextStyle(
                          color: (times['v28'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v28'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v28'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v28'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(29);
                        });
                      },
                      child: Text(
                        '21:00',
                        style: TextStyle(
                          color: (times['v29'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v29'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v29'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v29'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(30);
                        });
                      },
                      child: Text(
                        '21:30',
                        style: TextStyle(
                          color: (times['v30'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v30'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v30'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v30'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(31);
                        });
                      },
                      child: Text(
                        '22:00',
                        style: TextStyle(
                          color: (times['v31'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v31'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v31'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v31'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(32);
                        });
                      },
                      child: Text(
                        '22:30',
                        style: TextStyle(
                          color: (times['v32'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v32'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v32'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v32'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(33);
                        });
                      },
                      child: Text(
                        '23:00',
                        style: TextStyle(
                          color: (times['v33'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v33'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v33'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v33'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(34);
                        });
                      },
                      child: Text(
                        '23:30',
                        style: TextStyle(
                          color: (times['v34'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v34'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v34'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v34'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(35);
                        });
                      },
                      child: Text(
                        '00:00',
                        style: TextStyle(
                          color: (times['v35'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v35'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v35'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v35'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(36);
                        });
                      },
                      child: Text(
                        '00:30',
                        style: TextStyle(
                          color: (times['v36'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v36'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v36'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v36'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(37);
                        });
                      },
                      child: Text(
                        '1:00',
                        style: TextStyle(
                          color: (times['v37'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v37'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v37'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v37'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(38);
                        });
                      },
                      child: Text(
                        '1:30',
                        style: TextStyle(
                          color: (times['v38'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v38'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v38'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v38'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          nMulButton(39);
                        });
                      },
                      child: Text(
                        '2:00',
                        style: TextStyle(
                          color: (times['v39'] == 'true')
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                            color: (times['v39'] == 'true')
                                ? Colors.transparent
                                : kPrimaryColor,
                          ),
                          backgroundColor: (times['v39'] == 'true')
                              ? kColor5
                              : Colors.transparent,
                          shadowColor: (times['v39'] == 'true')
                              ? Colors.grey
                              : Colors.transparent,
                          elevation: 3),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ]),
      ],
    );
  }
}
