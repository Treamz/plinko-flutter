import 'package:flame/input.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter_plinko/lesson_02/objects/ball_dynamic.dart';
import 'package:flutter_plinko/my_game.dart';

class BoxStatic extends BodyComponent with ContactCallbacks {
  double x;
  double y;
  BoxStatic(this.x, this.y);

  @override
  Body createBody() {
    final bodyDef = BodyDef(
      userData: this,
      position: Vector2(x,y),
      type: BodyType.static,
    );

    final shape = CircleShape()..radius = .20;

    final fixtureDef = FixtureDef(shape)..friction = .05;
    return world.createBody(bodyDef)
      ..createFixture(fixtureDef);
      // ..angularVelocity = radians(180);
  }


  @override
  void beginContact(Object other, Contact contact) {
    print("other $other");
    if (other is BallDynamic) {
      print("HERE");
    //  hit();
    }
  }
}
