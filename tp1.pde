//PROFE LE PIDO PERDON POR LA DEMORA, SINCERAMENTE TUVE PROBLEMAS CON GIT HUB
//LA VEZ PASADA ME AYUDO UN COMPAÑERO PARA USAR GIT HUB, ESTA VEZ ESTUVE SOLO
//GRACIAS POR ENTENDER :)
PImage imagen;
PImage imagenuno;
PImage imagendos;
PImage imagentres;
PImage imagencuatro;
String estado= "inicio";
int cuentaFotograma=0;
int variable=0;
float x,y;
float r=50;
PFont fuente;
PFont fuente1;
void setup() {
  size(640,480);

fuente= createFont("Times new Roman",40);
fuente1=createFont("consolas",30);
}
void draw() {
 
  
if(estado.equals("inicio")){
imagen = loadImage("martillo3.jpeg");
    image(imagen,0,0,640,480);
  
text("¡HAZ CLICK PARA EMPEZAR!", 50,350);
textFont(fuente);
fill(random(0,255), random(0,255), random(0,255));  
frameRate(5); 
}
 else if(estado.equals("pantalla 1")){ 
 imagenuno= loadImage("martillo 1.jpg");
    image(imagenuno,0,0,640,480);
{ variable++;

text("El martillo es una herramienta de mano para golpear; basicamente consta de una cabeza pesada y de un mango para dirigir el movimiento de ella...",variable,120,300,400);
 if(variable==300) variable=0; frameRate(100);
 fill(255,0,0);


; 
textFont(fuente1); }
  cuentaFotograma++; if( cuentaFotograma >=150)
  { estado="pantalla 2"; cuentaFotograma=0;}
  
}
    
     else if(estado.equals("pantalla 2")){ 
 imagendos= loadImage("martillo2.jpg");
    image(imagendos,0,0,640,480);   
    {  variable++; text("Los primeros martillos surgieron en la Edad de Piedra del año 8.000 a.c; Estaban hechos de una piedra atada a un mango con tiras de cuero...",variable,120,300,400);
     if(variable==300) variable=0;

   frameRate(100);
  textFont(fuente1);
 fill(255,0,0);}
    cuentaFotograma++; if( cuentaFotograma >=80)
  { estado="pantalla 3"; cuentaFotograma=0;}
}
 
    
      else if(estado.equals("pantalla 3")){ 
 imagentres= loadImage("martillo4.jpg");
    image(imagentres,0,0,640,480); 
        {variable++;text("Actualmente estan hechos de un mango de madera o hierro con su clasica cabeza, pero en vez de ser de piedras son de acero o hierro.",variable,120,300,400);
        if(variable==300) variable=0;
;textFont(fuente1);  frameRate(100); fill(255,0,0);}
    cuentaFotograma++; if( cuentaFotograma >=80){ estado="pantalla 4";}

      }
else if (estado.equals("pantalla 4")) {
 background(0);
 
 { fill(255);
 text("Haz click en el circulo y volveras al inicio ;)",160,50);
 textSize(10);
 textFont(fuente);
  textSize(20);
  }
  {fill(random(0,255), random(0,255),random(0,255)); frameRate(20);
    ellipse(x,y,80,80);
    x= width/2+50*cos(frameCount*0.1);
 y= height/2+50*sin(frameCount*0.1);
}
}

}
void mousePressed() {
  if(estado.equals("inicio")){ estado="pantalla 1"; cuentaFotograma=0;}
else if(estado.equals("pantalla 4")) {estado="inicio";}


}
  
  
 
