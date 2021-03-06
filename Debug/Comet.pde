class Comet extends FCircle{

  Star catcher;
  Joint joint;

  PImage img;

  Comet(){
    super(20);
    setPosition(width/2, height/2);
    setFriction(0);
    setRestitution(1);
    setBullet(true);
    setDamping(0);
    setName("comet");
    catcher = null;

    setDrawable(false);

    img = loadImage("comet.png");
    img.resize(30, 30);
  }

  void step()
  {
    image(img, getX(), getY());
  }

  int outOfBoard()
  {
    if(catcher != null)
      return 0;
    if(getX() <= -10)
      return 2;
    if(getX() >= width+10)
      return 1;
    return 0;
  }

  void respawn()
  {
    setPosition(width/2, height/2);
    int rand = int(random(0, 2));
    if(rand == 0)
      rand = -1;
    //setVelocity(random(300, 400) * rand, random(-10, 10)); 
    setVelocity(500, 400);
    setRotation(0);
    setAngularVelocity(0);
  }
}