import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter_plinko/my_game.dart';

class SeparatorStatic extends BodyComponent with ContactCallbacks {
  double x;
  SeparatorStatic(this.x);
  @override
  Body createBody() {
    final bodyDef = BodyDef(
      userData: this,
      position: Vector2(x, worldSize.y - .75),
      type: BodyType.static,
    );

    final shape = PolygonShape()..setAsBoxXY(.05, .50);
    final fixtureDef = FixtureDef(shape);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
