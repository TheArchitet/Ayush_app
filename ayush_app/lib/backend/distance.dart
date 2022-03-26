import 'dart:math';
import 'package:ayush_app/backend/mapscreen.dart';
import 'package:flutter/material.dart';


import 'point.dart';
class distance{
    var place1;
    var place2;
    var dist;
    dynamic distance_xy(point v1 ){
      return  dist = sqrt((v1.x-lat)^2 + (v1.y-long)^2);
    }
}