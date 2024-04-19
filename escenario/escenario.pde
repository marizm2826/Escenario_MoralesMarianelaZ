PImage escenario;
PImage objeto;
PImage personaje;
PImage suelo;


int personajeX, personajeY;
float objetoX, objetoY;
float objetoVel = 10;
float objetoDireccion = 2;


int personajeWidth = 240; // Ancho inicial del jugador
int personajeHeight = 240; // Altura inicial del jugador
int objetoWidth = 350; // Ancho inicial del enemigo
int objetoHeight = 80;

public void setup (){
  size (800,600);
  suelo = loadImage ("suelo.jpg");
  escenario = loadImage ("escenario.jpg");
  objeto = loadImage ("objeto.png");  
  personaje = loadImage ("personaje.png");
  personaje.resize(personajeWidth, personajeHeight);
  objeto.resize(objetoWidth, objetoHeight);
  
 
  personajeX = width-240;
  personajeY = height- objeto.height - personajeHeight;
  objetoX = 50;
  objetoY = height - suelo.height - objetoHeight;
  
  
  
}

public void draw (){
  background(0);
  image(escenario, 0, 0, width, height); 
  image (suelo,0,500, width -0*2,height-30*2);
  

  
  image (personaje, personajeX, personajeY);
  
  
   objetoX += objetoVel * objetoDireccion;
  if (objetoX <= 0|| objetoX >= width - objeto.width) {
    objetoDireccion *= -1;
    
  }
  image (objeto,objetoX,objetoY);
  
  
  
}

void keyPressed (){
  if (keyCode == LEFT){
    personajeX -= 10;
  }
  else if (keyCode == RIGHT){
    personajeX += 10;
  }
  if (keyCode == UP){
    personajeY -= 10;
  }
  else if (keyCode == DOWN){
    personajeY +=10;
  }
  
}
  
  
      
    
 
