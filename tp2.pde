//Santiago Quintana
//link del video subido a Youtube: https://www.youtube.com/watch?v=NntwKoghKKc
int cuentaFotograma=0;
 PImage imagen;
String estado= "inicio";
int variable = 0;
float x,y;
float r=100;

 void setup () {
   size(800,400);
   imagen = loadImage("comision5.jpeg");
 
  
 }
 void draw()           { 
  background(#ADADAD);


   if(estado.equals("inicio")){ 
     
    fill(#04523B);
   ellipse(600,200,400,400);   fill(#04275A);
   ellipse(600,200,370,370);   fill(#2B0273);
   ellipse(600,200,340,340);   fill(#442778);
   ellipse(600,200,310,310);   fill(#6C2A2A);
  ellipse(600,200,280,280);    fill(#D20707);
  ellipse(600,200,250,250);   fill(#DA1B1B);
   ellipse(600,200,220,220);   fill(#F06607);
   ellipse(600,200,190,190);fill(#FFB200);
ellipse(600,200,160,160); fill(#FFFF00);
  ellipse(600,200,130,130);   fill(#22DE0C);
   ellipse(600,200,100,100);   fill(#0C9D31);
   ellipse(600,200,70,70);    fill(#0C349D);
ellipse(600,200,40,40);fill(#0857A0);
ellipse(600,200,20,20); noStroke();}

    image(imagen,0,0,400,400);
    
 if(estado.equals("pantalla 1")){
    for (int i=390; i>0;i -= 25)
  { ellipse(600, 200, i, i);
   fill(i,i,10); }

  
 if(cuentaFotograma>=300){ estado="pantalla 2"; cuentaFotograma=0;}
   }
  
 else if(estado.equals("pantalla 2")){ for (int i=390; i>0;i -= 25)
  {fill(i,i,i);  ellipse(600, 200, i, i);}

  if(cuentaFotograma>=300){ estado="pantalla 3 "; cuentaFotograma=0;}}
  else if(estado.equals("pantalla 3")){for (int i=390; i>0;i -= 25) 
  {fill(i,i,500);  ellipse(600, 200, i, i);}
  
    if(cuentaFotograma>=300){ estado="pantalla 4"; cuentaFotograma=0;}}
    else if(estado.equals("pantalla 4")){for (int i=390; i>20;i -=40) 
  { ellipse(600, 200, i, i);
   fill(random(0,255),random(0,255),random(0,255));
 frameRate(5);} }

  else if(estado.equals("pantalla 5")) {for(int y=0; y<=height; y+=30)
   for (int x=0; x<=width; x+=30)
  {fill(x,y,0);  ellipse(x+frameCount%30,y,10,10); frameRate(20); }

 }
  
   {image(imagen,0,0,400,400);}

 }
 void mousePressed()
{   
if(estado.equals("inicio")){ estado="pantalla 1"; cuentaFotograma=0;} 

else if(estado.equals("pantalla 1")) { estado="pantalla 2"; cuentaFotograma=0;}
else if(estado.equals("pantalla 2")) { estado="pantalla 3"; cuentaFotograma=0;}
else if(estado.equals("pantalla 3")) { estado="pantalla 4"; cuentaFotograma=0;}
else if(estado.equals("pantalla 4")) { estado="pantalla 5"; cuentaFotograma=0;}
else if(estado.equals("pantalla 5")) { estado="inicio"; cuentaFotograma=0;}
} 

  
  
