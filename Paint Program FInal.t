
import GUI in "%oot/lib/GUI"

%setting the screen graphics
View.Set ("graphics:780;500")

%creating the canvas for the painting
var canvas : int

%creating the colour selection storage variable
var clr : int := 0

%creating quick colour buttons variables
var clorButton : array 1 .. 14 of int

%creating the variables for the colour buttons pic files
var clor : array 1 .. 14 of int

%creating label varialbes
var labels : int

%creating mouse variables
var oldx, oldy : int

%creating mouse position variables
var originalX, originalY, lastX, lastY : int

%creating a text storage variable
var textShow : string

%creating line coordinates
var linex1, liney1, linex2, liney2 : int

%creating a line counter
var lineCounter : int := 1

%creating drawbutton pic variables
var picButton : array 1 .. 15 of int

%creating a new pic file variables pencil tool
var picID1 : int

%creating a new pic file variable for the spray tool
var picID2 : int

%creating a new pic file varialbe for the fill box tool
var picID3 : int

%creating a new pic file variable for the box tool
var picID4 : int

%creating a new pic file variable for the oval tool
var picID5 : int

%creating a new pic file variable for the fill oval tool
var picID6 : int

%creating a new pic file variable for the fill star tool
var picID7 : int

%creating a new pic file variable for the star tool
var picID8 : int

%creating a new pic file variable for the fill maple leaf tool
var picID9 : int

%creating a new pic file variable for the maple leaf tool
var picID10 : int

%creating a new pic file variable for the eraser tool
var picID11 : int

%creating a new pic file variable for the brush tool
var picID12 : int

%creating a new pic file variable for the text tool
var picID13 : int

%creating a new pic file variable for the select tool
var picID14 : int

%creating a new pic file variable for the line tool
var picID15 : int

%creating a button selection variable
var buttonSelect : int := 1

%creating a text variable
var textBox : int

%creates font variable
var font : int := Font.New ("serif:45")

%loading the pictures in...
picID1 := Pic.FileNew ("mrpencil.bmp")
picID2 := Pic.FileNew ("mrspray.bmp")
picID3 := Pic.FileNew ("mrfillsquare.bmp")
picID4 := Pic.FileNew ("mrsquare.bmp")
picID5 := Pic.FileNew ("mrfillcircle.bmp")
picID6 := Pic.FileNew ("mrcircle.bmp")
picID7 := Pic.FileNew ("mrfillstar.bmp")
picID8 := Pic.FileNew ("mrstar.bmp")
picID9 := Pic.FileNew ("mrfillmapleleaf.bmp")
picID10 := Pic.FileNew ("mrmapleleaf.bmp")
picID11 := Pic.FileNew ("mreraser.bmp")
picID12 := Pic.FileNew ("mrbrush.bmp")
picID13 := Pic.FileNew ("mrtext.bmp")
picID14 := Pic.FileNew ("cls.bmp")
picID15 := Pic.FileNew ("mrline.bmp")
%creating the graphics for the colour buttons
Draw.FillBox (0, 0, 15, 15, 12)
clor (1) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 65)
clor (2) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 14)
clor (3) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 10)
clor (4) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 9)
clor (5) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 13)
clor (6) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 7)
clor (7) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 4)
clor (8) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 42)
clor (9) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 43)
clor (10) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 2)
clor (11) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 1)
clor (12) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 58)
clor (13) := Pic.New (0, 0, 15, 15)
Draw.FillBox (0, 0, 15, 15, 0)
clor (14) := Pic.New (0, 0, 15, 15)

%creating the colour button procedures
%creating the bright red procedure
proc brightRed
    clr := 12
end brightRed

%creating the bright orange procedure
proc brightOrange
    clr := 65
end brightOrange

%creating the bright yellow procedure
proc brightYellow
    clr := 14
end brightYellow

%creating the bright green procedure
proc brightGreen
    clr := 10
end brightGreen

%creating the bright blue procedure
proc brightBlue
    clr := 9
end brightBlue

%creating the bright purple procedure
proc brightPurple
    clr := 13
end brightPurple

%creating the black procedure
proc blck
    clr := 7
end blck

%creating the red procedure
proc rd
    clr := 4
end rd

%creating the orange procedure
proc orge
    clr := 42
end orge

%creating the yellow procedure
proc ylw
    clr := 43
end ylw

%creating the green procedure
proc grn
    clr := 2
end grn

%creating the blue procedure
proc bl
    clr := 1
end bl

%creating the purple procedure
proc ppl
    clr := 58
end ppl

%creating the white procedure
proc wht
    clr := white
end wht

proc clear
    Draw.Cls
end clear


proc intro

    var x1, y1 : int := 0
    var dx, dy : int := 1
    for i : 1 .. 300000
	if whatdotcolor (x1, y1) not= 0 then
	end if
	drawdot (x1, y1, black)
	x1 := x1 + dx
	y1 := y1 + dy
	if x1 = 0 or x1 = maxx then
	    dx := -dx
	end if
	if y1 = 0 or y1 = maxy then
	    dy := -dy
	end if
    end for
    colorback (brightgreen)
    cls
end intro


%creating the mouse down procedure
procedure MouseDown (mx, my : int)
    originalX := mx
    originalY := my
    lastX := mx
    lastY := my
    oldx := mx
    oldy := my
    if buttonSelect = 13 then
	get textShow : *
	locatexy (mx + 70, my + 50)
	colour (clr)
	put textShow
    elsif buttonSelect = 15 then
	linex1 := mx
	liney1 := my
	buttonSelect := 17
    elsif buttonSelect = 17 then
	linex2 := mx
	liney2 := my
	GUI.DrawLine (canvas, linex1, liney1, linex2, liney2, clr)
	buttonSelect := 15
    elsif buttonSelect = 16 then
    end if
end MouseDown

%creating the mouse drag procedure for all tools
procedure MouseDrag (mx, my : int)
    if buttonSelect = 1 then
	GUI.DrawLine (canvas, oldx, oldy, mx, my, clr)
	oldx := mx
	oldy := my
    elsif buttonSelect = 2 then
	for x : 1 .. 10
	    GUI.DrawDot (canvas, Rand.Int (oldx - 15, oldx + 15),
		Rand.Int (oldy - 30, oldy + 30), clr)
	    GUI.DrawDot (canvas, Rand.Int (oldx - 30, oldx + 30),
		Rand.Int (oldy - 15, oldy + 15), clr)
	end for
	oldx := mx
	oldy := my
    elsif buttonSelect = 3 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawFillBox (canvas, originalX, originalY, lastX, lastY,
		clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 4 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawBox (canvas, originalX, originalY, lastX, lastY, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 5 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawFillOval (canvas, (originalX + lastX) div 2,
		(originalY + lastY) div 2, abs (originalX - lastX) div 2,
		abs (originalY - lastY) div 2, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 6 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawOval (canvas, (originalX + lastX) div 2,
		(originalY + lastY) div 2, abs (originalX - lastX) div 2,
		abs (originalY - lastY) div 2, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 7 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawFillStar (canvas, originalX, originalY,
		lastX, lastY, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 8 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawStar (canvas, originalX, originalY,
		lastX, lastY, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 9 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawFillMapleLeaf (canvas, originalX, originalY,
		lastX, lastY, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)

	end if
    elsif buttonSelect = 10 then
	if mx not= lastX or my not= lastY then
	    GUI.DrawMapleLeaf (canvas, originalX, originalY,
		lastX, lastY, clr)
	    originalX := lastX
	    originalY := lastY
	    lastX := mx
	    lastY := my
	    delay (150)
	end if
    elsif buttonSelect = 11 then
	GUI.DrawFillBox (canvas, mx - 10, my - 10, mx + 10, my + 10,
	    white)
	originalX := lastX
	originalY := lastY
	lastX := mx
	lastY := my
	delay (150)
    elsif buttonSelect = 12 then
	GUI.DrawFillOval (canvas, mx, my, 5, 5, clr)
	oldx := mx
	oldy := my
    end if
end MouseDrag

%creating the pencil selection procedure
procedure pencil
    buttonSelect := 1
end pencil

%creating the spray selection procedure
procedure spray
    buttonSelect := 2
end spray

%creating the filled box selection procedure
procedure fillBox
    buttonSelect := 3
end fillBox

%creating the box selection procedure
procedure box

    buttonSelect := 4
end box

%creating the oval procedure
procedure fillOval

    buttonSelect := 5
end fillOval

%creating the filled oval procedure
procedure oval

    buttonSelect := 6
end oval

%creating the filled star procedure
procedure fillStar

    buttonSelect := 7
end fillStar

%creating the star procedure
procedure star

    buttonSelect := 8
end star

%creating the filled maple leaf procedure
procedure fillMapleLeaf

    buttonSelect := 9
end fillMapleLeaf

%creating the maple leaf procedure
procedure mapleLeaf

    buttonSelect := 10
end mapleLeaf

%creating the eraser procedure
procedure eraser

    buttonSelect := 11
end eraser

%creating the brush procedure
procedure brush

    buttonSelect := 12
end brush

%creating the text procedure
procedure text

    buttonSelect := 13
end text

%creating the line procedure
procedure line
    buttonSelect := 15
end line



%creating the do nothing procedure for when the mouse is up
procedure DoNothing (mx, my : int)
end DoNothing

%creating the clear procedure
procedure clear1
    GUI.DrawCls (canvas)
end clear1

%creating a do nothing procedure
procedure doNone
end doNone


%creating the full canvas
canvas := GUI.CreateCanvasFull (70, 50, 720, 425, 0,
    MouseDown, MouseDrag, DoNothing)

%creating the GUI picture colour selection buttons
clorButton (1) := GUI.CreatePictureButton (50, 1, clor (1), brightRed)
clorButton (2) := GUI.CreatePictureButton (71, 1, clor (2), brightOrange)
clorButton (3) := GUI.CreatePictureButton (92, 1, clor (3), brightYellow)
clorButton (4) := GUI.CreatePictureButton (113, 1, clor (4), brightGreen)
clorButton (5) := GUI.CreatePictureButton (134, 1, clor (5), brightBlue)
clorButton (6) := GUI.CreatePictureButton (155, 1, clor (6), brightPurple)
clorButton (7) := GUI.CreatePictureButton (176, 1, clor (7), blck)
clorButton (8) := GUI.CreatePictureButton (50, 24, clor (8), rd)
clorButton (9) := GUI.CreatePictureButton (71, 24, clor (9), orge)
clorButton (10) := GUI.CreatePictureButton (92, 24, clor (10), ylw)
clorButton (11) := GUI.CreatePictureButton (113, 24, clor (11), grn)
clorButton (12) := GUI.CreatePictureButton (134, 24, clor (12), bl)
clorButton (13) := GUI.CreatePictureButton (155, 24, clor (13), ppl)
clorButton (14) := GUI.CreatePictureButton (176, 24, clor (14), wht)

%creating a picture button 
picButton (1) := GUI.CreatePictureButton (0, 445, picID1, pencil)
picButton (2) := GUI.CreatePictureButton (0, 415, picID2, spray)
picButton (3) := GUI.CreatePictureButton (0, 385, picID3, fillBox)
picButton (4) := GUI.CreatePictureButton (0, 355, picID4, box)
picButton (5) := GUI.CreatePictureButton (0, 325, picID5, fillOval)
picButton (6) := GUI.CreatePictureButton (0, 295, picID6, oval)
picButton (7) := GUI.CreatePictureButton (30, 385, picID7, fillStar)
picButton (8) := GUI.CreatePictureButton (30, 355, picID8, star)
picButton (9) := GUI.CreatePictureButton (30, 325, picID9, fillMapleLeaf)
picButton (10) := GUI.CreatePictureButton (30, 295, picID10, mapleLeaf)
picButton (11) := GUI.CreatePictureButton (30, 445, picID11, eraser)
picButton (12) := GUI.CreatePictureButton (30, 415, picID12, brush)
picButton (13) := GUI.CreatePictureButton (0, 265, picID13, text)
picButton (14) := GUI.CreatePictureButton (30, 265, picID14, clear1)
picButton (15) := GUI.CreatePictureButton (0, 235, picID15, line)

%creating the GUI processing loop
loop
    exit when GUI.ProcessEvent
end loop











