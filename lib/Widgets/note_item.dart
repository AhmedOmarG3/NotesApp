import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 35, bottom: 35, left: 20, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffFFCD7A)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Flutter Notes',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            subtitle: Text(
              'Build your career with\n Ahmed Omar',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text('May 21,2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 20)),
          )
        ]));
  }
}
