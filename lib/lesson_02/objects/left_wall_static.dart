import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter_plinko/my_game.dart';

class LeftWallStatic extends BodyComponent {
  @override
  Body createBody() {
    final bodyDef = BodyDef(
      position: Vector2(0, worldSize.y - .25),
      type: BodyType.static,
    );

    final shape = EdgeShape()..set(Vector2.zero(), Vector2(worldSize.x, -2000));
    final fixtureDef = FixtureDef(shape);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
