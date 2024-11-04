[Vent]
0=HRail,0.0,0.0,0.0,10,[All Metal]
Total=1

[Coupon]
Total=0

[Object]
0=Rout,[Rout],,2.2,2,0,11.1,@r,11.1
1=Rout,[Rout],,2.2,2,0,@t-11.1,@r,@t-11.1
2=Path,[Top_Silk],,0.2,5,12,1,12,9,50,9,50,1,12,1
3=Path,[Bottom_Silk],,0.2,5,@r-12,1,@r-12,9,@r-50,9,@r-50,1,@r-12,1
4=Rout,[Rout],,2.2,4,@l,@b,@r,@b,@r,@t,@l,@t,@l,@b
Total=5

[Panel]
Right=0
Top=12.2
Units=millimeter
Width=600
Height=600
Version=102
Left=0
Bottom=12.2

[Tooling]
Total=0

[Fiducial]
Total=0

[TextLabel]
11=,1.6,@r-100,@t-6.5,0.0,1,0,LL,[Bottom_Silk],dX: $$PANEL_SPACING_X
10=,1.6,@r-100,@t-9,0.0,1,0,LL,[Bottom_Silk],dY: $$PANEL_SPACING_Y
13=arial.fnt,2,@r-15,@b+5,0.0,1,0,LL,[Bottom_Silk],MY_BOT_PANEL LABEL
12=arial.fnt,2,@left+15,@b+5,0.0,0,0,LL,[Top_Silk],MY_TOP_PANEL LABEL
14=arial.fnt,3,0.0,0.0,0.0,0,0,LL,[Top_Silk],$$JOB
Total=15
0=fab.fnt,1.6,@left+2,@t-4,0.0,0,0,LL,[Top_Silk],TOP SIDE LEFT CORNER. PCB#$$WORKSPACE_NAME x $$PANEL_TOTAL
1=fab.fnt,1.6,@left+2,@t-9,0.0,0,0,LL,[Top_Silk],PANEL ORIGIN BOTTOM LEFT OF PCB AREA
2=,1.6,@left+2,@t-6.5,0.0,0,0,LL,[Top_Silk],$$PANEL_WIDTH x $$PANEL_HEIGHT x $$PANEL_THICKNESS
3=,1.6,@r-10,@t-4,0.0,1,0,LL,[Bottom_Silk],BOTTOM SIDE LEFT CORNER. PCB#$$WORKSPACE_NAME x $$PANEL_TOTAL
4=,1.6,@r-10,@t-9,0.0,1,0,LL,[Bottom_Silk],PANEL ORIGIN BOTTOM RIGHT OF PCB AREA
5=,1.6,@r-10,@t-6.5,0.0,1,0,LL,[Bottom_Silk],$$PANEL_WIDTH x $$PANEL_HEIGHT x $$PANEL_THICKNESS
6=fab.fnt,1.6,@left+100,@t-4,0.0,0,0,LL,[Top_Silk],Rot: 0
7=fab.fnt,1.6,@left+100,@t-9,0.0,0,0,LL,[Top_Silk],dY: $$PANEL_SPACING_Y
8=,1.6,@left+100,@t-6.5,0.0,0,0,LL,[Top_Silk],dX: $$PANEL_SPACING_X
9=,1.6,@r-100,@t-4,0.0,1,0,LL,[Bottom_Silk],Rot: 0

