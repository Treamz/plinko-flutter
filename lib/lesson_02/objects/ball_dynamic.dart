import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter_plinko/lesson_02/objects/box_static.dart';
import 'package:flutter_plinko/my_game.dart';

import '../../lesson_02/objects/object_state.dart';
import 'balance_hud.dart';
import 'floor_static.dart';

class BallDynamic extends BodyComponent with ContactCallbacks {
  ObjectState state = ObjectState.normal;

  final speed = Vector2(2, 0);
  @override
  Body createBody() {
    final rng = Random();
    int randomInt = rng.nextInt(worldSize.x.toInt()) + 1;
    double randTemp = rng.nextDouble() * randomInt;
    final bodyDef = BodyDef(
      // linearVelocity: speed,
      userData: this,
      position: Vector2(randTemp, 0),
      type: BodyType.dynamic,
    );

    final shape = CircleShape()..radius = .25;
    final fixtureDef = FixtureDef(shape)
      ..density = .05
      ..friction = .005
      ..restitution = .055;
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }

  void hit() {
    if (state == ObjectState.normal) {
      state = ObjectState.explode;
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (state == ObjectState.explode) {
      world.destroyBody(body);
      gameRef.remove(this);
    }
  }

  @override
  void endContact(Object other, Contact contact) {
    if(other is BoxStatic) {
      // final rand = Random();
      // int random = rand.nextInt(2);
      // print(random);
      // var speed = Vector2(-1, 0);
      //
      // if(random == 0) {
      //   speed = Vector2(1, 0);
      // }
      // else {
      //   speed = Vector2(-1, 0);
      // }
      //
      // body.linearVelocity = speed;
      print("BOX STATIC CONTACT");
    }
  }

  @override
  void beginContact(Object other, Contact contact) {
    if (other is FloorStatic) {
      hit();

    }

  }
}
