import 'package:flutter/material.dart'; //

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.format_list_numbered,
              size: 32.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(30.0)),
          )
        ],
      ),
    );
  }
}
