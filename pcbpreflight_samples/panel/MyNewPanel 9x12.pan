[Vent]
0=Rail,0,0,0,0.5,[All Metal]
1=Dot,0.0,0.0,0.0,0,0,0.12,Circle,0.06,0,0.12,Circle,0.06,0.06,.12,[Odd Metal]
2=Dot,0.0,0.1,0.0,0,0,0.06,Circle,0.06,0,0.06,Circle,0.06,0.06,0.06,[Even Metal]
Total=3

[Coupon]
Total=0

[Object]
0=Polygon,[Top+Bottom],Clear,4,1.9,@l+.075,3.5,@l+0.075,3.5,.425,1.9,.425
1=Polygon,[Top+Bottom],Clear,4,5.9,@l+.075,7.5,@l+0.075,7.5,.425,5.9,@b+.425
Total=2

[Panel]
Right=0.5
Top=0.5
Units=inch
Width=9
Height=12
Version=102
Left=0.5
Bottom=0.5

[Tooling]
0=Drill,.1,.1,@right-.25,@top-.25,0.0,0,[All]
1=Drill,.1,.1,@left+.25,@top-.25,0.0,0.0,[All]
2=Drill,.1,.1,@right-.25,@bottom+.25,0.0,0.0,[All]
Total=3

[Fiducial]
0=Circle,0.03,Circle,0.03,@left+.25,@bottom+.4,Panel,[Top+Bottom]
1=Circle,0.03,Rectangle,0.03,@left+.25,@top-.4,Panel,[Top+Bottom]
2=Circle,0.0,Rectangle,0.03,@right-0.25,@top-.4,Panel,[Top+Bottom]
Total=3

[TextLabel]
0=arial.fnt,.125,@left+2,@bottom+.25,0.0,0,0,LL,[Top+Bottom],This is my Text #1
1=arial.fnt,.125,@left+3.5,@t-.25,0.0,0,1,LL,[Top_Silk],This is my Text #2
2=fab.fnt,.1,@left+6,.36,0.0,0,0,LL,[Top+Bottom],This is my Text #3
3=fab.fnt,.1,@left+6,.25,0.0,0,0,LL,[Top+Bottom],This is my Text #4
Total=4

