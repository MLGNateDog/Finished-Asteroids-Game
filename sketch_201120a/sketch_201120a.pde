/*questions to ask pelletier:
 
 /1. how to make the asteroid display particles when destroyed by a bullet
 
 2. how to make the spaceship invulnerable for a short period of time after taking damage
 
 */


Spaceship myShip;
//ufo myEnemy;
ArrayList<GameObject> myObjects;

//mode setup
int mode, astCount, ufoSpawnTimer, ufoShotTimer;
final int ufoSpawnThreshold = 60*8;
final int ufoFireThreshold = 90;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OVER = 3;
final int WIN = 4;

boolean wkey, skey, akey, dkey, spacekey, offScreen, lScreenSpawn, lUfo, keyJam, touchingAsteroid, touchingEnemyBullet, enemyFire, shipImmune;

void setup() {
  size(1280, 960);
  mode = INTRO;
  astCount = 4;
  rectMode(CENTER);
  textAlign(CENTER);
  myShip = new Spaceship();
  wkey=akey=skey=dkey=false;
  myObjects = new ArrayList<GameObject>();
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == OVER) {
    over();
  } else if (mode == WIN) {
    win();
  } else {
    println("Error mode = " + mode);
  }
}
