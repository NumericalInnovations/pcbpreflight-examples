-- This tutorial demonstrates aperture creation

fab3000.dbSetUserUnits( fab3000.dbcInch )

-- Create Aperture using Dcode 10
nDcode = 10
myApt = fab3000.dbAperture()
myApt:setType( fab3000.dbApertureTypeCircle )
myApt:setWidth( 0.015 );
myApt:setHeight( 0.015 );
fab3000.dbSetAperture( nDcode, myApt );

-- Is DCode 10 Empty??
if fab3000.dbIsDcodeEmpty( nDcode )~=1 then
	fab3000.princ( "Dcode:" .. nDcode .. "Was Successfully created!" )

	myAptCheck = fab3000.dbAperture()
	fab3000.dbGetAperture( nDcode, myAptCheck )
	
	--Output Message
	fab3000.princ( "Dcode=" .. nDcode )
	fab3000.princ( "Shape=" .. myAptCheck:getType() )
	fab3000.princ( "Width=" .. myAptCheck:getWidth() )
	fab3000.princ( "Height=" .. myAptCheck:getHeight() )
	fab3000.princ( "OD=" .. myAptCheck:getOD() )
	fab3000.princ( "ID=" .. myAptCheck:getID() )
else 
	fab3000.princ( "Dcode:" .. nDcode .. "Was not created. Nothing to do." )
end

-- Add a few pads (note current dcode is used)
fab3000.uiEditAddLayer( "pads", 1 )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.07000, 0.06000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.09500, 0.04000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.13000, 0.04000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.16000, 0.06500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.08500, 0.11000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.13500, 0.11500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.12500, 0.00500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.16500, 0.02000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.19000, 0.04500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.20000, 0.08000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.19000, 0.12500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.15500, 0.16500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.10000, 0.17500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.06000, 0.16000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.02000, 0.12500 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.00500, 0.07000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.03000, 0.03000 ), nDcode )
fab3000.uiAddFlash( 1, 0, fab3000.dbPoint( 0.07500, 0.01000 ), nDcode )

--Zoom All (view all pads)
fab3000.uiViewZoomAll();	