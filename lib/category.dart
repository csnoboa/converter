import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);

class Category extends StatelessWidget{

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  }) : assert(name != null),
       assert(iconLocation != null),
       super(key:key);


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius, 
          highlightColor: color[50], 
          splashColor: color[100],

          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  )
                ),
                Center(
                  child: Text(
                    name, 
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                    
                    ),
                )
              ],
            )
            )
          )
        )
    );
  }

}