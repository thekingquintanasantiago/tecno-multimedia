boolean ar=true;
PImage imagenuno;
int variable=0;

void setup ()
{
size(800,400);
frameRate(100);
 text("Haz click", 20,20,20);
 
}


void draw()
{
 background(255);
noStroke();
 
   imagenuno=loadImage( "ejemplo1.jpg");

 
imagenuno.resize(400,400);
image(imagenuno,1,1);

 fill(0);
    text("Haz click en cualquier lugar de la pantalla ;)", 20,20,20);

 
  fill(160,160,160);

rect(420,182,300,30); 
fill(204,0,204); 
if(ar) text("Santiago Ezequiel Quintana (C5)", 480,200,50);
textSize(15);
fill(160,160,160);

  ellipse(420,196,50,65);
   ellipse(736,196,45, 55);
 

    
 
      
            fill(255);
    
      if(ar) fill(random(0,255),random(0,255),random(0,255)); 
 
   ellipse(420,196,36,53);
   ellipse(736,196,32, 44);
   smooth(200);

     ellipse(42,198,36,53);
   ellipse(362,198,32, 44);
   smooth(200);


}
void mouseClicked()
{
  if(ar==true) ar=false;
  else ar=true;
}
