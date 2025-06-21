
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class FilaGame extends FlameGame {
  int vidas = 3;
  int fase = 1;
  double paciencia = 100;

  @override
  Future<void> onLoad() async {
    // Aqui carregaríamos os sprites e sons
  }

  @override
  void update(double dt) {
    paciencia -= dt * 5;
    if (paciencia <= 0) {
      vidas -= 1;
      if (vidas > 0) {
        paciencia = 100;
        // reinicia a fase
      } else {
        // fim de jogo
      }
    }
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // Aqui renderizaríamos Vó, fila, HUD de vidas e paciência
  }
}
