import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter_plinko/lesson_02/objects/ball_dynamic.dart';
import 'package:flutter_plinko/my_game.dart';

import 'balance_hud.dart';

class FloorStatic extends BodyComponent with ContactCallbacks {
  MyTextBox hud;

  FloorStatic(this.hud);

  @override
  Body createBody() {
    final bodyDef = BodyDef(
      userData: this,
      position: Vector2(0, worldSize.y - .75),
      type: BodyType.static,
    );

    final shape = EdgeShape()..set(Vector2.zero(), Vector2(worldSize.x, 0));
    final fixtureDef = FixtureDef(shape);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }

  @override
  void beginContact(Object other, Contact contact) {
    if (other is BallDynamic) {
      print(contact.bodyB.position.x);
      print("+BAL");
      hud.balance = generateScore(contact.bodyB.position.x, hud.balance);
      hud.text = "Balance ${hud.balance}";
    }
  }

  int generateScore(double pos, int old) {
    if (pos < 2) {
      return old - 5;
    }

    if (pos > 2 && pos < 4) {
      return old + 5;
    }

    if (pos > 4 && pos < 6) {
      return old + 10;
    }

    if (pos > 6 && pos < 8) {
      return old - 10;
    }

    if (pos > 8 && pos < 10) {
      return old + 20;
    }
    if (pos > 10 && pos < 12) {
      return old - 20;
    }
    return old;
  }
}
