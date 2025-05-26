[Vent]
0=Rail,0.0,0.0,0.0,0.5,[All]
Total=1

[Coupon]
Total=0

[Object]
Total=0

[Panel]
Right=0.5
Top=0.5
Units=inch
Width=18
Height=24
Version=102
Left=0.5
Bottom=0.5

[Tooling]
0=Drill,.125,.125,@left+0.25,@bottom+0.25,0.0,0.0,[All]
1=Drill,.125,.125,@right-0.25,@bottom+0.25,0.0,0.0,[All]
2=Drill,.125,.125,@right-0.25,@top-0.25,0.0,0.0,[All]
3=Drill,.125,.125,@left+0.25,@top-0.25,0.0,0.0,[All]
Total=4

[Fiducial]
0=Circle,0.0394,Circle,0.0837,@left+0.5,@bottom+0.125,Panel,[Top+Bottom]
1=Circle,0.0394,Circle,0.0837,@right-0.5,@bottom+0.125,Panel,[Top+Bottom]
2=Circle,0.0394,Circle,0.0837,@left+0.5,@top-0.125,Panel,[Top+Bottom]
Total=3

[TextLabel]
0=arial.fnt,0.2,@cenx,@bottom+0.25,0.0,0,1,CC,[Top_Silk],Machine Front - Top
1=arial.fnt,0.2,@cenx,@b+0.25,0.0,1,1,CC,[Bottom_Silk],Machine Front - Bottom
2=arial.fnt,0.2,@cenx,@t-0.25,0.0,0,1,CC,[Top_Silk],$$JOB
3=arial.fnt,0.2,@cenx,@top-0.25,0.0,1,1,CC,[Bottom_Silk],$$JOB
Total=4

