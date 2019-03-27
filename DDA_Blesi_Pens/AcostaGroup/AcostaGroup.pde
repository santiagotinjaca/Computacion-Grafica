/*import controlP5.*;
ControlP5 cp5;
DropdownList d1;

int cnt = 0;
*/

int Mx1=0,My1=0,Mx2=0,My2=0;

int size=5;

String tipo="dda";
//String tipo="bresenham";

//String pen="";
String pen="box";
//String pen="halfBoxVertical";
//String pen="halfBoxHorizontal";

void setup(){
  size(1280,720);
  //strokeWeight(2);
  //Dda d1= new Dda(300,300,100,100);    
  //Bresenham b = new Bresenham(300,300,500,500,20,"box");   
  //new Bresenham(300,300,500,300,50,"");  
  //new Bresenham(300,350,500,350,50,"box");  
  //new Bresenham(300,400,300,400,5,"halfBoxHorizontal");  
  //new Bresenham(300,450,300,450,5,"halfBoxVertical");
  //new Dda(100,100,200,200,5,"box");
  
  /*
  text("-->Presione D para DDA",10,15);
  text("-->Presione B para Bresenham",10,30);
  text("-->Presione X para Plumilla BOX",10,45);
  text("-->Presione Y para Plumilla halfBoxVertical",10,60);
  text("-->Presione Z para Plumilla halfBoxHorizontal",10,75);  
  text("************* DDA ************",500,20);
  text("************* BOX ************",500,35);
*/  
  
  
  /*cp5 = new ControlP5(this);
  // create a DropdownList
  //d1 = cp5.addDropdownList("myList-d1","2").setPosition(0, 0);
    d1 = cp5.addDropdownList("myList-p1",100,100,100,120); 
  customize(d1); 
*/  


  
  

  
}

void draw(){}

void mousePressed() { 
  point(mouseX,mouseY);
  if(Mx1!=0 && My1!=0){
    println("Generando Linea.");
    Mx2=mouseX;
    My2=mouseY;
    if("dda".equals(tipo)){
      new Dda(Mx1,My1,Mx2,My2,size,pen);
    }else{
      new Bresenham(Mx1,My1,Mx2,My2,size,pen);
    }
    Mx1=0;
    My1=0;
    Mx2=0;
    My2=0;
  }else{
    println("Poniendo primer punto.");
    Mx1=mouseX;
    My1=mouseY;
  }
}
/*
void keyPressed() {
  println(key);
  if(key=='D'){
    text("************* DDA ************",500,20);    
  }
  if(key=='B'){
    text("************* Bresenham ************",500,20);    
  }
  if(key=='X'){
    text("************* BOX ************",500,35);    
  }
  if(key=='Y'){
    text("************* halfBoxVertical ************",500,35);    
  }
  if(key=='Z'){
    text("************* halfBoxHorizontal ************",500,35);    
  }
}
*/
