PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//566200/459140/2.49/30/4/Undefined or Miscellaneous

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c175_h88.9"
		(holeDiam 0.889)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.750) (shapeHeight 1.750))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.750) (shapeHeight 1.750))
	)
	(padStyleDef "s175_h88.9"
		(holeDiam 0.889)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.750) (shapeHeight 1.750))
		(padShape (layerNumRef 16) (padShapeType Rect)  (shapeWidth 1.750) (shapeHeight 1.750))
	)
	(padStyleDef "c146_h292"
		(holeDiam 2.92)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.460) (shapeHeight 1.460))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.460) (shapeHeight 1.460))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "113990105" (originalName "113990105")
		(multiLayer
			(pad (padNum 1) (padStyleRef s175_h88.9) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c175_h88.9) (pt 0.000, -2.540) (rotation 90))
			(pad (padNum 3) (padStyleRef c175_h88.9) (pt 0.000, -5.080) (rotation 90))
			(pad (padNum 4) (padStyleRef c175_h88.9) (pt 0.000, -7.620) (rotation 90))
			(pad (padNum 5) (padStyleRef c175_h88.9) (pt 0.000, -10.160) (rotation 90))
			(pad (padNum 6) (padStyleRef c175_h88.9) (pt 0.000, -12.700) (rotation 90))
			(pad (padNum 7) (padStyleRef c175_h88.9) (pt 0.000, -15.240) (rotation 90))
			(pad (padNum 8) (padStyleRef c175_h88.9) (pt 0.000, -17.780) (rotation 90))
			(pad (padNum 9) (padStyleRef c175_h88.9) (pt 0.000, -20.320) (rotation 90))
			(pad (padNum 10) (padStyleRef c175_h88.9) (pt 0.000, -22.860) (rotation 90))
			(pad (padNum 11) (padStyleRef c175_h88.9) (pt 0.000, -25.400) (rotation 90))
			(pad (padNum 12) (padStyleRef c175_h88.9) (pt 0.000, -27.940) (rotation 90))
			(pad (padNum 13) (padStyleRef c175_h88.9) (pt 0.000, -30.480) (rotation 90))
			(pad (padNum 14) (padStyleRef c175_h88.9) (pt 0.000, -33.020) (rotation 90))
			(pad (padNum 15) (padStyleRef c175_h88.9) (pt 0.000, -35.560) (rotation 90))
			(pad (padNum 16) (padStyleRef c175_h88.9) (pt 22.860, -35.560) (rotation 90))
			(pad (padNum 17) (padStyleRef c175_h88.9) (pt 22.860, -33.020) (rotation 90))
			(pad (padNum 18) (padStyleRef c175_h88.9) (pt 22.860, -30.480) (rotation 90))
			(pad (padNum 19) (padStyleRef c175_h88.9) (pt 22.860, -27.940) (rotation 90))
			(pad (padNum 20) (padStyleRef c175_h88.9) (pt 22.860, -25.400) (rotation 90))
			(pad (padNum 21) (padStyleRef c175_h88.9) (pt 22.860, -22.860) (rotation 90))
			(pad (padNum 22) (padStyleRef c175_h88.9) (pt 22.860, -20.320) (rotation 90))
			(pad (padNum 23) (padStyleRef c175_h88.9) (pt 22.860, -17.780) (rotation 90))
			(pad (padNum 24) (padStyleRef c175_h88.9) (pt 22.860, -15.240) (rotation 90))
			(pad (padNum 25) (padStyleRef c175_h88.9) (pt 22.860, -12.700) (rotation 90))
			(pad (padNum 26) (padStyleRef c175_h88.9) (pt 22.860, -10.160) (rotation 90))
			(pad (padNum 27) (padStyleRef c175_h88.9) (pt 22.860, -7.620) (rotation 90))
			(pad (padNum 28) (padStyleRef c175_h88.9) (pt 22.860, -5.080) (rotation 90))
			(pad (padNum 29) (padStyleRef c175_h88.9) (pt 22.860, -2.540) (rotation 90))
			(pad (padNum 30) (padStyleRef c175_h88.9) (pt 22.860, 0.000) (rotation 90))
			(pad (padNum 31) (padStyleRef c146_h292) (pt 1.020, 4.060) (rotation 90))
			(pad (padNum 32) (padStyleRef c146_h292) (pt 21.800, 4.060) (rotation 90))
			(pad (padNum 33) (padStyleRef c146_h292) (pt 1.060, -39.620) (rotation 90))
			(pad (padNum 34) (padStyleRef c146_h292) (pt 21.800, -39.620) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 11.430, -17.780) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.27 6.35) (pt 24.13 6.35) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 24.13 6.35) (pt 24.13 -41.91) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 24.13 -41.91) (pt -1.27 -41.91) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.27 -41.91) (pt -1.27 6.35) (width 0.025))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -2.27 7.35) (pt 25.13 7.35) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 25.13 7.35) (pt 25.13 -42.91) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 25.13 -42.91) (pt -2.27 -42.91) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -2.27 -42.91) (pt -2.27 7.35) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.27 5.08) (pt 0 6.35) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -0.618 6.35) (pt 24.13 6.35) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.27 -41.91) (pt 24.13 -41.91) (width 0.2))
		)
	)
	(symbolDef "113990105" (originalName "113990105")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -625 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 8) (pt 0 mils -700 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -725 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 9) (pt 0 mils -800 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -825 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 10) (pt 0 mils -900 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -925 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 11) (pt 0 mils -1000 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1025 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 12) (pt 0 mils -1100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 13) (pt 0 mils -1200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1225 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 14) (pt 0 mils -1300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1325 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 15) (pt 0 mils -1400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -1425 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 16) (pt 3100 mils -1400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -1425 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 17) (pt 3100 mils -1300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -1325 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 18) (pt 3100 mils -1200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -1225 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 19) (pt 3100 mils -1100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -1125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 20) (pt 3100 mils -1000 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -1025 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 21) (pt 3100 mils -900 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -925 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 22) (pt 3100 mils -800 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -825 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 23) (pt 3100 mils -700 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -725 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 24) (pt 3100 mils -600 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -625 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 25) (pt 3100 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -525 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 26) (pt 3100 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 27) (pt 3100 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 28) (pt 3100 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 29) (pt 3100 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 30) (pt 3100 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 2870 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 2900 mils 100 mils) (width 6 mils))
		(line (pt 2900 mils 100 mils) (pt 2900 mils -1500 mils) (width 6 mils))
		(line (pt 2900 mils -1500 mils) (pt 200 mils -1500 mils) (width 6 mils))
		(line (pt 200 mils -1500 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 2950 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 2950 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "113990105" (originalName "113990105") (compHeader (numPins 30) (numParts 1) (refDesPrefix U)
		)
		(compPin "1" (pinName "A0 - ADC_EX") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "ADC") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "RESV") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "4" (pinName "D12 - GPIO10 / SD D3") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "D11 - GPIO9 / SD D2") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "SPI INT / SD D1") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "7" (pinName "SPI MOSI / SD CMD") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "SPI MISO / SD D0") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "9" (pinName "SPI CLK / SD CLK") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "10" (pinName "GND_1") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "11" (pinName "VDD3V3_1") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "12" (pinName "EN") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "13" (pinName "NRST") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "14" (pinName "GND_2") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "15" (pinName "VDD5V") (partNum 1) (symPinNum 15) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "16" (pinName "VDD3V3_2") (partNum 1) (symPinNum 16) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "17" (pinName "GND_3") (partNum 1) (symPinNum 17) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "18" (pinName "D10 - TXD0 / GPIO1") (partNum 1) (symPinNum 18) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "19" (pinName "D9 -  RXD0 / GPIO3") (partNum 1) (symPinNum 19) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "20" (pinName "D8 - GPIO15 / TXD2 / HSPICS") (partNum 1) (symPinNum 20) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "21" (pinName "D7 - GPIO13 / RXD2 / HSPID") (partNum 1) (symPinNum 21) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "22" (pinName "D6 - GPIO12 / HSPIQ") (partNum 1) (symPinNum 22) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "23" (pinName "D5 - GPIO14 / HSPICLK") (partNum 1) (symPinNum 23) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "24" (pinName "GND_4") (partNum 1) (symPinNum 24) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "25" (pinName "VDD3V3_3") (partNum 1) (symPinNum 25) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "26" (pinName "D4 - GPIO2 / TXD1") (partNum 1) (symPinNum 26) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "27" (pinName "D3 - GPIO0") (partNum 1) (symPinNum 27) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "28" (pinName "D2 - GPIO4") (partNum 1) (symPinNum 28) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "29" (pinName "D1 - GPIO5") (partNum 1) (symPinNum 29) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "30" (pinName "D0 - GPIO16") (partNum 1) (symPinNum 30) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "113990105"))
		(attachedPattern (patternNum 1) (patternName "113990105")
			(numPads 30)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
				(padNum 15) (compPinRef "15")
				(padNum 16) (compPinRef "16")
				(padNum 17) (compPinRef "17")
				(padNum 18) (compPinRef "18")
				(padNum 19) (compPinRef "19")
				(padNum 20) (compPinRef "20")
				(padNum 21) (compPinRef "21")
				(padNum 22) (compPinRef "22")
				(padNum 23) (compPinRef "23")
				(padNum 24) (compPinRef "24")
				(padNum 25) (compPinRef "25")
				(padNum 26) (compPinRef "26")
				(padNum 27) (compPinRef "27")
				(padNum 28) (compPinRef "28")
				(padNum 29) (compPinRef "29")
				(padNum 30) (compPinRef "30")
			)
		)
		(attr "Manufacturer_Name" "Seeed Studio")
		(attr "Manufacturer_Part_Number" "113990105")
		(attr "Mouser Part Number" "713-113990105")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Seeed-Studio/113990105?qs=SElPoaY2y5KMx8k1roAIKw%3D%3D")
		(attr "Arrow Part Number" "113990105")
		(attr "Arrow Price/Stock" "https://www.arrow.com/en/products/113990105/seeed-technology-limited?region=nac")
		(attr "Mouser Testing Part Number" "")
		(attr "Mouser Testing Price/Stock" "")
		(attr "Description" "NodeMCU DEVKIT V1.0")
		(attr "<Hyperlink>" "https://www.seeedstudio.com/NodeMCU-v2-Lua-based-ESP8266-development-kit.html")
		(attr "<Component Height>" "7.35")
		(attr "<STEP Filename>" "113990105.stp")
		(attr "<STEP Offsets>" "X=11.43;Y=-17.59;Z=3.94")
		(attr "<STEP Rotation>" "X=90;Y=0;Z=0")
	)

)