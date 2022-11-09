class Player {
  int health;
  String name;
  bool isDead;
  int score;

  Player(String temp)
      : health = 100,
        name = temp,
        isDead = false,
        score = 0;

  void gotHit(int hitpoint) {
    if (health - hitpoint > 0) {
      health = health - hitpoint;
    } else if (!isDead) {
      dead();
    }
  }

  void heal(int healpoint) {
    if (health + healpoint <= 100) {
      health = health + healpoint;
    } else {
      health = 100;
    }
  }

  void shoot(Player anotherplayer, int hitpoint) {
    score += hitpoint;
    anotherplayer.gotHit(hitpoint);
  }

  void recall() {
    if (isDead) {
      isDead = false;
      health = 100;
      print('Vishwa is recalled');
    } else {
      print('You are not dead yet ${name}!');
    }
  }

  void dead() {
    health = 0;
    isDead = true;
    print('${name} is dead');
  }

  void showDetails() {
    if (isDead) {
      print('I am ${name}, and I am dead');
    } else {
      print('I am ${name}, and I have ${health}% health');
    }
    print('My score is ${score}');
  }
}

void main() {
  Player player1 = Player("sujith");
  Player player2 = Player('vishwa');
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player2.gotHit(12);
  player1.shoot(player2, 5);
  player2.gotHit(12);
  player1.gotHit(10);
  player1.showDetails();
  player2.showDetails();
}
