import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter_plinko/lesson_02/objects/ball_dynamic.dart';
import 'package:flutter_plinko/lesson_02/objects/box_kinematic.dart';
import 'package:flutter_plinko/lesson_02/objects/box_static.dart';
import 'package:flutter_plinko/lesson_02/objects/floor_static.dart';
import 'package:flutter_plinko/lesson_02/objects/left_wall_static.dart';
import 'package:flutter_plinko/my_game.dart';

import 'hud.dart';
import 'objects/balance_hud.dart';
import 'objects/right_wall_static.dart';
import 'objects/separator_static.dart';

class GameLesson02 extends MyGame with TapDetector {


  @override
  Future<void> onLoad() async {
    super.onLoad();
    hud = MyTextBox(
      'Balance: 0',
      align: Anchor.center,
      size: Vector2(400, 400),
      timePerChar: 0,
      margins: .2,
    )..positionType= PositionType.viewport..position = Vector2(400, 890);
    add(hud);
    // add(TextComponent(text: 'Balance: 4',position: Vector2(100, 690))
    //   ..positionType = PositionType.viewport
    //   ..x = 20 // size is a property from game
    //   ..y = .1);

    add(BalanceSatatic());

    add(SeparatorStatic(2));
    add(SeparatorStatic(4));
    add(SeparatorStatic(6));
    add(SeparatorStatic(8));
    add(SeparatorStatic(10));



    add(FloorStatic(hud));
    add(LeftWallStatic());
    add(RightWallStatic());

    // add(BoxStatic(worldSize.x / 2, worldSize.y / 2));
    add(BoxStatic(1, 1));
    add(BoxStatic(2, 2));
    add(BoxStatic(3, 3));
    add(BoxStatic(4, 4));
    add(BoxStatic(5, 5));
    add(BoxStatic(6, 6));
    add(BoxStatic(7, 7));
    add(BoxStatic(8, 8));
    add(BoxStatic(9, 9));

    add(BoxStatic(.2, 2));
    add(BoxStatic(1.3, 3));
    add(BoxStatic(2.3, 4));
    add(BoxStatic(3.3, 5));
    add(BoxStatic(4.3, 6));
    add(BoxStatic(5.3, 7));
    add(BoxStatic(6.3, 8));
    add(BoxStatic(7.3, 9));

    add(BoxStatic(.8, 4));
    add(BoxStatic(1.6, 5));
    add(BoxStatic(2.6, 6));
    add(BoxStatic(3.6, 7));
    add(BoxStatic(4.6, 8));
    add(BoxStatic(5.6, 9));


    add(BoxStatic(.8, 8));
    add(BoxStatic(1, 7));
    add(BoxStatic(1.8, 9));


    add(BoxStatic(3, 9));
    add(BoxStatic(2, 8));
    add(BoxStatic(.1, 9));


    add(BoxStatic(.1, 5));
    add(BoxStatic(1.2, 6));
    add(BoxStatic(2.2, 7));
    add(BoxStatic(3.2, 8));
    add(BoxStatic(4.2, 9));


    add(BoxStatic(3, 1));
    add(BoxStatic(4, 2));
    add(BoxStatic(5, 3));
    add(BoxStatic(6, 4));
    add(BoxStatic(7, 5));
    add(BoxStatic(8, 6));
    add(BoxStatic(9, 7));
    add(BoxStatic(10, 8));
    add(BoxStatic(11, 9));


    add(BoxStatic(5, 1));
    add(BoxStatic(6, 2));
    add(BoxStatic(7, 3));
    add(BoxStatic(8, 4));
    add(BoxStatic(9, 5));
    add(BoxStatic(10, 6));
    add(BoxStatic(11, 7));
    add(BoxStatic(12, 8));
    add(BoxStatic(13, 9));



    add(BoxStatic(7, 1));
    add(BoxStatic(8, 2));
    add(BoxStatic(9, 3));
    add(BoxStatic(10, 4));
    add(BoxStatic(11, 5));
    add(BoxStatic(12, 6));
    add(BoxStatic(13, 7));
    add(BoxStatic(14, 8));
    add(BoxStatic(15, 9));


    add(BoxStatic(9, 1));
    add(BoxStatic(10, 2));
    add(BoxStatic(11, 3));
    add(BoxStatic(12, 4));
    add(BoxStatic(13, 5));


    add(BoxStatic(11, 1));
    add(BoxStatic(12, 2));
    add(BoxStatic(13, 3));
    add(BoxStatic(14, 4));


  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);
    add(BallDynamic());
  }
}
