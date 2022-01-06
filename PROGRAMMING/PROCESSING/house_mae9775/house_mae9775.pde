//WINDOW
size(720, 720);

//SKY BG
noStroke();
fill(#2F5F8E);//LIGHT BLUE
rect(0, 0, 720, 100);//TOP RECT
fill(#313374);//MID BLUE
rect(0, 200, 720, 480);//MID RECT
fill(#2B4689);//DARK BLUE
rect(0, 100, 720, 150);//BOTTOM RECT

//GRASS
fill(#6A8961);//DARK GREEN
rect(0, 530, 720, 100);//BACK RECT
fill(#849D69);//MID GREEN
rect(0, 560, 720, 50);//MID RECT
fill(#A0B771);//LIGHT GREEN
rect(0, 610, 720, 110);//FRONT RECT

//CLOUD1(BEHINDSUN)
fill(#CACBBD);//GREY
ellipse(340, 110, 120, 100);//CLOUD PT1
ellipse(400, 80, 100, 90);//CLOUD PT2
ellipse(380, 115, 100, 90);//CLOUD PT3

//SUN
fill(#FDFFCB);//PALE YELLOW
ellipse(495, 120, 200, 200);

//CLOUD2
fill(#EAEAE1);//LIGHT GREY
ellipse(280, 140, 120, 100);//CLOUDPT1
ellipse(360, 180, 130, 120);//CLOUDPT2
ellipse(350, 120, 100, 90);//CLOUDPT3
ellipse(300, 200, 100, 90);//CLOUDPT4

//CLOUD3
fill(#F0EFE6);//OFFWHITE
ellipse(600, 160, 120, 98);//CLOUDPT1
ellipse(590, 200, 130, 120);//CLOUDPT2
ellipse(560, 150, 100, 90);//CLOUDPT3
ellipse(510, 200, 100, 90);//CLOUDPT4
ellipse(550, 160, 50, 45);//CLOUDPT5

//FENCES
stroke(#FFFFFF);//WHITE
strokeCap(SQUARE);
strokeWeight(20);
line(0, 530, 720, 530);//HORIZONTAL FENCE
line(0, 500, 0, 590);//LINES 51-61 VERTICAL FENCE
line(72, 500, 72, 590);
line(144, 500, 144, 590);
line(216, 500, 216, 590);
line(288, 500, 288, 590);
line(360, 500, 360, 590);
line(432, 500, 432, 590);
line(504, 500, 504, 590);
line(576, 500, 576, 590);
line(648, 500, 648, 590);
line(720, 500, 720, 590);

//HOUSE
noStroke();
fill(#E0DCC7);//BUILDING WALL
rect(92, 400, 250, 250);//MAIN HOUSE BLOCK
fill(#C8C9A2);//BUILDING SHADOW
rect(92, 390, 250, 70);//HOUSE SHADOW

//ROOF+CHIMNEY
fill(#646455);
rect(92, 300, 50, 90);//CHIMNEY
triangle(72, 400, 217, 280, 362, 400);//ROOF
rect(72, 400, 290, 40);//ROOFBASE

//SMOKE
fill(#E5E5DE);//GREY
ellipse(95, 270, 30, 30);//SMOKE1
ellipse(80, 250, 50, 50);//SMOKE2
ellipse(100, 215, 60, 60);//SMOKE3
ellipse(80, 180, 30, 30);//SMOKE4
ellipse(100, 145, 20, 20);//SMOKE5

//DOOR
fill(#554C3A);//DOOR COLOR
rect(220, 525, 75, 125);//DOOR
fill(#D3CBA2);//YELLOW
ellipse(280, 590, 10, 10);//KNOB

//WINDOW
stroke(#8A9069);//FRAMECOLOR
strokeWeight(5);
fill(#FCFFED);//GLASSCOLOR
rect(120, 480, 75, 100);//WINDOW
line(157.5, 480, 157.5, 580);//WINDOWPANE VERT
line(120, 530, 195, 530);//WINDOWPANE HORI

//TREE
noStroke();
fill(#7BAF60);//LEAVES GREEN
ellipse(540, 380, 250, 210);//LEAVES
fill(#81695A);//BARKCOLOR
rect(510, 435, 60, 215);//LOG
rect(490, 625, 100, 25);//LOGBASE

//TREEBRANCHES
stroke(#81695A);//BARKCOLOR
strokeWeight(35);
line(530, 450, 480, 410);//BRANCHLEFT
line(550, 450, 600, 410);//BRANCHRIGHT
