import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildNoteItem() => Container(
      padding: EdgeInsets.only(top: 24, bottom: 25, left: 16),
      decoration: BoxDecoration(
          color: Color(0XffFFCC80), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text('Build Your Carrier with Eslam Younis',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 18)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 16),
            child: Text(
              'May 21-2023',
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
