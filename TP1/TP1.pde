//Mia Panizza 127008/7
PImage miFoto;
void setup(){size(800,400);
miFoto = loadImage("data/MURAL.jpg"); }
void draw(){background(180,80,50);
image(miFoto, 0, 0, 400, 400);
//colores y formas de fondo
stroke(90,115,190);
fill(90,115,190);
rect(404,95,width,height);
rect(404,31,40,80);
rect(697,1,30,100);
rect(770,43,30,100);

stroke(190,190,0);
fill(190,190,0);
rect(548,2,70,80);

stroke(120,150,225);
fill(120,150,225);
rect(452,2,20,92);
rect(650,23,15,30);
rect(530,49,110,40);
rect(733,2,30,86);

stroke(180,120,205);
fill(180,120,205);
rect(518,154,200,90);

stroke(0,225,200);
fill(0,225,200);
quad(474,338,494,359,663,289,690,290);

//Mano
strokeWeight(7);
stroke(150,100,50);
fill(200,150,50);
rect(500,184,140,300);
ellipse(610,304,100,100);
rect(485,177,58,135);
rect(540,179,40,110);
rect(580,181,40,110);
rect(620,183,40,110);
rect(470,240,120,40);
bezier(472,240,439,297,522,358,582,344);
bezier(566,344,588,348,600,273,514,278);
stroke(130,80,30);
strokeWeight(11);
line(514,202,514,235);

//Sol
stroke(105,40,90);
strokeWeight(7);
fill(205,130,170);
triangle(425,113,464,134,478,110);
triangle(478,110,459,66,506,91);
triangle(509,91,495,34,543,79);
triangle(543,79,548,24,576,76);
triangle(576,76,613,26,605,84);
triangle(605,84,661,38,638,98);
triangle(638,98,698,72,658,114);
triangle(658,114,715,118,673,135);
bezier(464,133,507,58,624,58,671,135);
line(551,112,551,131);
line(583,114,583,131);
fill(225,225,225);
bezier(482,113,502,95,534,95,550,114);
bezier(584,113,604,95,628,95,654,114);
fill(105,40,90);
ellipse(520,108,13,13);
ellipse(612,108,13,13);

//pajaro1
stroke(205,130,170);
fill(205,130,170);
ellipse(435,191,50,30);

//ventana y planta
stroke(80,80,80);
strokeWeight(11);
fill(80,80,80);
rect(468,137,200,20);
noFill();
line(762,104,762,395);
strokeWeight(7);
ellipse(762,78,30,50);
ellipse(745,110,37,20);
ellipse(785,110,37,20);
ellipse(731,141,50,30);
ellipse(788,143,50,30);
ellipse(731,303,50,30);
ellipse(788,303,50,30);

//pajaro 2
stroke(180,95,50);
fill(180,95,50);
ellipse(694,262,30,50);}

void mousePressed(){
  println(mouseX+","+mouseY);}
