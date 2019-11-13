//variables
int numOfButtons = 6;
boolean buttonPressed;
float twoThirds = 2.0/3.0;
final float BUTTON_WIDTH = width*(6*twoThirds);
final float BUTTON_HEIGHT = height*(twoThirds*twoThirds);

//arrays for the buttons
float [] buttonsX = {BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT};
float [] buttonsY= {250,300,350,400,450,500};
String [] buttons= {"Go to Class","Socialize","Eat","Study","Work","Sleep"};

void setup(){
  fullScreen();
  background();
  buttons(); 
}

//repeatedly checks if mouse is clicked
void draw(){
    mousePressed();
}

//creates the buttons
void buttons(){
 for(int i = 0; i < numOfButtons; i++){  
   strokeWeight(3);
   rect(buttonsX[i],buttonsY[i], BUTTON_WIDTH, BUTTON_HEIGHT,10);
   textAlign(CENTER,BOTTOM);
   textSize(30);
   text(buttons[i], buttonsX[i]+BUTTON_WIDTH/2,buttonsY[i]+BUTTON_HEIGHT);
   }
}

//makes the layout of the game
void background(){
  background(48,48,48);
  noFill();
  stroke(255,200,0);
  strokeWeight(10);
  rect(0,0,width,height);
  float(height);
  float(width);
  strokeWeight(5);
  line(0,height*twoThirds,width,height*twoThirds);
  line(width/2*twoThirds,0,width/2*twoThirds,height*twoThirds);
  line(width*twoThirds,0,width*twoThirds,height*twoThirds);
}

//when button is clicked, it does a thing 
void mouseClicked (){
 for(int i = 0; i < numOfButtons; i++){ 
   if (mouseX-buttonsX[i]<=BUTTON_WIDTH && mouseY-buttonsY[i]<=BUTTON_HEIGHT){
        text (buttons[i],width*twoThirds+BUTTON_WIDTH,2*twoThirds*buttonsY[i]);
        //input algorithms here and/or separate functions for each choice
        break;
       }
    }
}
