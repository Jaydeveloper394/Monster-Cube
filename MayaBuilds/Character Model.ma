//Maya ASCII 2019 scene
//Name: Character Model.ma
//Last modified: Mon, Jun 07, 2021 12:47:43 PM
//Codeset: UTF-8
requires maya "2019";
requires "mtoa" "3.1.2";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Mac OS X 10.16";
createNode transform -s -n "persp";
	rename -uid "E6381DB9-7B48-694F-104D-C68208D21D1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1030474235624519 2.4524439988616873 6.5125258983239096 ;
	setAttr ".r" -type "double3" -5.1383527300637732 1099.8000000001723 -1.0563754417716019e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "22C06085-9349-5163-DC0D-F6AF3D87BAB1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.9526885746600069;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.41803186797281888 0.63597418943463513 3.7252903397929248e-09 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9E007843-5A43-6C0C-D406-A0808B612F6C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D680A168-9644-DF8D-0802-2A849C744830";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9FB79A36-7A4B-C2ED-EEBA-CCB4714E9144";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.18791202467910517 1.5340794780311073 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2FB7CD88-3F49-DF74-A675-59B6B7A4A2E7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.4171904681205207;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "DD48A8F2-AD4E-8024-E4ED-04B56FB6E760";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1000000000005 0.86844193844934692 -0.41160645346978603 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C280DF47-DF4E-FEBC-D418-D495D843ABEC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1000000596049;
	setAttr ".ow" 2.6342573108440615;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -5.9604644775390625e-08 0 -5.9604644775390625e-08 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "8A59ACA8-ED47-5C0D-8684-709F64066870";
	setAttr ".t" -type "double3" 0 1.8040908977171126 -11.768602448672674 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "3A7F5D71-4F4F-3BDC-947D-759BBEB2BC4C";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "/Users/tylerpasela/Desktop/Screen Shot 2021-05-14 at 3.38.36 PM.png";
	setAttr ".cov" -type "short2" 188 286 ;
	setAttr ".dlc" no;
	setAttr ".w" 1.88;
	setAttr ".h" 2.86;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2";
	rename -uid "3C2C92BD-7549-84EC-6339-68BE1145B5E6";
	setAttr ".t" -type "double3" -12.033694148681985 1.6648873675837883 0 ;
	setAttr ".r" -type "double3" 0 90.515949700581075 0 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "AF5FF406-3F43-0AB9-3BD2-3FA1EDFDA308";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "/Users/tylerpasela/Desktop/Screen Shot 2021-05-14 at 3.38.42 PM.png";
	setAttr ".cov" -type "short2" 146 300 ;
	setAttr ".dlc" no;
	setAttr ".w" 1.46;
	setAttr ".h" 3.0000000000000004;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "Player_Model";
	rename -uid "95323096-DE4C-B01A-82B1-91958F09C192";
createNode transform -n "pSphere1" -p "Player_Model";
	rename -uid "BDA2AD11-7F43-8ED9-FF7D-079B3B9FD4B0";
	setAttr ".t" -type "double3" -0.070902850932072603 1.5367387739759559 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.51666667542823708 1 0.66111110574868537 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "6170D7DF-BC4D-DC2C-7F09-95AB5A647558";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pSphereShape1Orig" -p "pSphere1";
	rename -uid "C5076E80-4C42-7CAF-514E-FAB442CFD3C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "Body" -p "Player_Model";
	rename -uid "A6B547FD-9447-4C12-F33C-0FAF960DD3EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 123.6655976002948 0.87802510891851426 90.584765384285319 ;
	setAttr ".bps" -type "matrix" -0.010204705779604639 0.99983050775427196 -0.015323829279484783 0
		 0.55418575748263976 0.018410751310988904 0.83218939577451845 0 0.83233046933495403 -1.1102230246251568e-16 -0.55427970359436385 0
		 -0.035058664471538825 1.0175769745347987 -0.0071618615257426632 1;
	setAttr ".radi" 0.51957751482879866;
	setAttr ".liw" yes;
createNode joint -n "Upper_body" -p "Body";
	rename -uid "5EE7477C-5948-E4DD-210E-599E4C1F451B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 -56.338883124109692 91.054917948595474 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -4.556971126389911e-17 -3.8857805861880479e-16 0
		 -3.6919620989979308e-16 1.0000000000000002 -1.0697775175689715e-15 0 5.5511151231257827e-17 7.9185599228752273e-16 1.0000000000000004 0
		 -0.04503959293294043 1.9954823631807983 -0.022149657067966941 1;
	setAttr ".radi" 0.78548738754843583;
	setAttr ".liw" yes;
createNode joint -n "right_leg" -p "Body";
	rename -uid "27974ACE-294D-5FB9-9903-AEA0C214B01B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1222786822239297 7.9541152781804891 -97.002697772334201 ;
	setAttr ".bps" -type "matrix" -0.5200902262761149 -0.10960750911853469 -0.58386959125418914 0
		 -0.072904973455759733 0.78191914099814341 -0.081845408549195309 0 0.58957812925168684 -1.9521942827283174e-16 -0.52517518850620282 0
		 -0.34902026581291434 0.63239492605775283 0.080192073286176321 1;
	setAttr ".radi" 0.51047687212292336;
	setAttr ".liw" yes;
createNode joint -n "left_leg" -p "Body";
	rename -uid "8EEED0E7-3D41-CCFB-3175-19B40170E930";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.010204705779604639 0.99983050775427196 -0.015323829279484783 0
		 0.55418575748263976 0.018410751310988904 0.83218939577451845 0 0.83233046933495403 -1.1102230246251568e-16 -0.55427970359436385 0
		 0.32772374718751451 0.62421625139963521 -0.003172798340792371 1;
	setAttr ".radi" 0.51957751482879866;
	setAttr ".liw" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "40BB860A-4E4B-1639-7DEF-6CAB62D33C5C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "45E534E2-774B-5938-2186-C89AB72FD02D";
createNode displayLayer -n "defaultLayer";
	rename -uid "9DDF1A19-8340-8018-A779-F080D5384471";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D0BA28A1-7E40-639B-100C-AA94BE6B5B1A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3F55C1BD-9642-1989-73AB-55B5ED546164";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6B232DEE-E040-593B-40D1-4F823A773B15";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "70606050-4E49-E89A-3E92-68815583B037";
createNode polySphere -n "polySphere1";
	rename -uid "FFFA07B8-A747-DFAF-0CE2-0BA67C7387C7";
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "9C724AF7-434F-C645-6825-E98837FB5D2F";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.15073225 2.4742353 -0.12659635 ;
	setAttr ".rs" 1847509444;
	setAttr ".lt" -type "double3" 0.052167851928724029 -5.6378512969246231e-17 0.052319428802244036 ;
	setAttr ".ls" -type "double3" 0.62917076560956708 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.23056165370506451 2.4497634975057716 -0.18663702124632309 ;
	setAttr ".cbx" -type "double3" -0.070902850932072603 2.498706957493412 -0.066555682071285718 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "40FCB2F8-AE45-F143-60FF-319835BAB5A2";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[0]" -type "float3" 0.18624252 0.14180571 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[8]" -type "float3" 0.18624252 0.14180571 0 ;
	setAttr ".tk[9]" -type "float3" 0.18624252 0.14180571 0 ;
	setAttr ".tk[10]" -type "float3" 0.26466039 0.12661225 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.091201395 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[18]" -type "float3" 0.26466039 0.12661225 0 ;
	setAttr ".tk[19]" -type "float3" 0.34008268 0.12661225 0 ;
	setAttr ".tk[20]" -type "float3" 0.23525369 -0.010128979 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.027729021 0.02796204 ;
	setAttr ".tk[22]" -type "float3" 0 0.027729021 0.02796204 ;
	setAttr ".tk[28]" -type "float3" 0.23525369 -0.010128979 0 ;
	setAttr ".tk[29]" -type "float3" 0.23525369 -0.010128979 0 ;
	setAttr ".tk[30]" -type "float3" 0.19604474 0.010128979 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.018486015 0.076895609 ;
	setAttr ".tk[32]" -type "float3" 0 0.018486015 0.076895609 ;
	setAttr ".tk[34]" -type "float3" -0.28426486 0 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.020339984 -0.053841136 ;
	setAttr ".tk[37]" -type "float3" 0 -0.020339984 -0.053841136 ;
	setAttr ".tk[38]" -type "float3" 0.19604474 0.010128979 0 ;
	setAttr ".tk[39]" -type "float3" 0.4607051 0.010128979 0 ;
	setAttr ".tk[40]" -type "float3" 0.23525369 0.040515915 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.0092430077 0.048933573 ;
	setAttr ".tk[42]" -type "float3" 0 0.0092430077 0.048933573 ;
	setAttr ".tk[46]" -type "float3" 0 -0.096614927 -0.16152334 ;
	setAttr ".tk[47]" -type "float3" 0 -0.096614927 -0.16152334 ;
	setAttr ".tk[48]" -type "float3" 0.23525369 0.040515915 0 ;
	setAttr ".tk[49]" -type "float3" 0.23525369 0.040515915 0 ;
	setAttr ".tk[50]" -type "float3" 0.12742908 0.055709384 0 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.034952551 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.034952551 ;
	setAttr ".tk[56]" -type "float3" 0 -0.030509977 -0.12306546 ;
	setAttr ".tk[57]" -type "float3" 0 -0.030509977 -0.12306546 ;
	setAttr ".tk[58]" -type "float3" 0.11762685 0.045580402 0 ;
	setAttr ".tk[59]" -type "float3" 0.12742908 0.065838359 0 ;
	setAttr ".tk[60]" -type "float3" 0.10782461 0.055709384 0 ;
	setAttr ".tk[64]" -type "float3" -0.078417897 0 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.015254986 -0.076915912 ;
	setAttr ".tk[66]" -type "float3" 0 -0.10169993 -0.13075705 ;
	setAttr ".tk[67]" -type "float3" 0 -0.10169993 -0.13075705 ;
	setAttr ".tk[68]" -type "float3" 0.10782461 0.070964366 -0.076915912 ;
	setAttr ".tk[69]" -type "float3" 0.10782461 0.055709384 0 ;
	setAttr ".tk[70]" -type "float3" 0.029406711 0.025322447 0 ;
	setAttr ".tk[74]" -type "float3" -0.088220134 0 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.012677276 -0.081496775 ;
	setAttr ".tk[76]" -type "float3" 0 -0.019015914 -0.16778746 ;
	setAttr ".tk[77]" -type "float3" 0 -0.019015914 -0.16778746 ;
	setAttr ".tk[78]" -type "float3" 0.029406711 0.012645171 -0.081496775 ;
	setAttr ".tk[79]" -type "float3" 0.029406711 0.025322447 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[81]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[82]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[83]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[84]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[85]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[86]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[87]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[88]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[89]" -type "float3" 0 -0.038031828 -0.10067248 ;
	setAttr ".tk[90]" -type "float3" 0 0.1468702 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.038031828 -0.10067248 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "CA780304-6C4D-75F9-01E5-A4818EDD043B";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.11954715 2.5377774 -0.1314321 ;
	setAttr ".rs" 130626940;
	setAttr ".lt" -type "double3" 0.013969256120211772 -5.6378512969246231e-18 0.034350383118319228 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.16225806376900004 2.5324874130827064 -0.19204084634646443 ;
	setAttr ".cbx" -type "double3" -0.076836242801175653 2.5430675951582069 -0.070823358997760433 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "DAF36BD7-1E42-F56B-ABD9-2C8E9932C252";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[92:94]" -type "float3"  0.0045760591 0.01330593 0
		 0.015832286 0.020440903 0 -0.013259681 -0.020707639 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "271ECAC3-6F4D-CE40-E830-A89B0B5DD29E";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.10155818 2.5701137 -0.13385032 ;
	setAttr ".rs" 1290666195;
	setAttr ".lt" -type "double3" -2.1455344553951428e-16 -6.3317406873153459e-17 0.055054869963952445 ;
	setAttr ".ls" -type "double3" 0.89380299838134891 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14426908240574488 2.5648236481290931 -0.19445907034367502 ;
	setAttr ".cbx" -type "double3" -0.058847268174487231 2.5754037109953041 -0.073241578069309435 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "F5489994-D044-C007-F31E-AD9D914D481F";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.095996514 2.6242836 -0.13794218 ;
	setAttr ".rs" 2066654608;
	setAttr ".lt" -type "double3" -1.8539857149502126e-17 2.5153490401663703e-17 0.05433288203679832 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.13417163867375445 2.6190791336637611 -0.19851645600044704 ;
	setAttr ".cbx" -type "double3" -0.057821385297065667 2.6294880119901771 -0.077367903285511783 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "A3F2ED87-314F-644E-3818-28B9822ECD36";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.089478768 2.6780741 -0.14196451 ;
	setAttr ".rs" 334098527;
	setAttr ".lt" -type "double3" -9.7769624969774871e-17 -8.7603535536828758e-17 0.050316028142814224 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.12765389872089203 2.672869702969181 -0.20253879064943783 ;
	setAttr ".cbx" -type "double3" -0.05130363764526983 2.683278581295597 -0.081390233008841018 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "8B2ED0F9-4C48-518C-884D-FEB506FF1E7B";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.083520703 2.724087 -0.14568979 ;
	setAttr ".rs" 1185108586;
	setAttr ".lt" -type "double3" -0.01535300476823989 -6.3317406873153459e-17 0.075436666675871969 ;
	setAttr ".ls" -type "double3" 1.0773846016572135 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1219686790832907 2.7194751707655067 -0.20626404879740254 ;
	setAttr ".cbx" -type "double3" -0.045072729155681085 2.7286987511259193 -0.085115510859452001 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "28C2D3AF-4747-6712-CC51-4E82B272847F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[104:106]" -type "float3"  0.0016385361 -0.0032082836
		 0 -0.00067869917 -0.0047684805 8.8817842e-16 0.00037748509 0.004758806 8.8817842e-16;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "50DDA7B3-6B41-3891-E448-17BBEC84FC3D";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.099351957 2.8006897 -0.1512714 ;
	setAttr ".rs" 807572232;
	setAttr ".lt" -type "double3" -0.01671353339687218 6.7654215563095477e-17 0.060203573157696304 ;
	setAttr ".ls" -type "double3" 1.0854335116792202 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.13988917458436123 2.7892574278455848 -0.21184502039049558 ;
	setAttr ".cbx" -type "double3" -0.05881474018081289 2.8121217695814247 -0.090697792678524514 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "45374C97-7149-B5E2-2AB3-5291ADA05A26";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[107:109]" -type "float3"  0.0028762699 -0.0053874501
		 0 -6.5011009e-06 -0.008416485 1.1379786e-15 -0.0034363123 0.0082357833 1.1379786e-15;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "5BB09E68-914C-3C2C-14C0-12AB1E8FAA03";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.12793785 2.8583436 -0.15549229 ;
	setAttr ".rs" 258261233;
	setAttr ".lt" -type "double3" -0.019166452048339055 -2.3418766925686896e-17 0.052541192343088808 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.1685267432259181 2.8383119312864418 -0.21602184348918432 ;
	setAttr ".cbx" -type "double3" -0.087348958340219607 2.8783753124815101 -0.094962735862824041 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "BE1D010C-FD4E-A01B-E526-BC8C77402C78";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[110:112]" -type "float3"  0.0069406121 -0.006019399
		 0 0.0053416793 -0.010173728 0 -0.0078643411 0.010018169 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "9394AF79-C348-4E3E-1874-1294B6C64488";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16788343 2.89817 -0.15871014 ;
	setAttr ".rs" 45801213;
	setAttr ".lt" -type "double3" -0.034877442327474514 9.8879238130678004e-17 0.055257336487051903 ;
	setAttr ".ls" -type "double3" 0.98444949606168153 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20400556870132899 2.8713989464384193 -0.21923969938678919 ;
	setAttr ".cbx" -type "double3" -0.13176127969728532 2.9249408451658363 -0.098180572057782592 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "E55BAAAC-174D-D2EE-017D-1B8EC3E063BC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[113:115]" -type "float3"  0.0082611619 -0.003998416
		 0 0.0083883395 -0.0074438574 0 -0.0089023281 0.0074181315 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "5D7D7E3F-FC4A-BF1E-5F4C-0BB8F279440C";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.22882377 2.9218152 -0.16088423 ;
	setAttr ".rs" 374791736;
	setAttr ".lt" -type "double3" -0.032340242166533563 -2.5370330836160804e-17 0.038954134048843694 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25172326544211343 2.8839341608625526 -0.22144247494662608 ;
	setAttr ".cbx" -type "double3" -0.20592426609104375 2.9596959559064979 -0.10032597351157173 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "7FAC4BF9-E349-07EF-5CD3-D5981D7FF80C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[116:118]" -type "float3"  0.020609962 -0.0050301603
		 0 0.024504997 -0.011521714 0 -0.024504997 0.011521714 0;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "2BACE7DB-E942-1A7B-4C38-08A3BBFB6F6B";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.28262794 2.9146442 -0.15985705 ;
	setAttr ".rs" 2095584697;
	setAttr ".lt" -type "double3" -0.048736671841920744 -2.8275992658421956e-16 0.035398805424990069 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28769126574878601 2.8705294338804359 -0.22041531688667154 ;
	setAttr ".cbx" -type "double3" -0.27756462766128948 2.9587590900999183 -0.099298795748970881 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "E622AE9A-974B-D2A2-BF15-BDADA0A795E1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[119:121]" -type "float3"  0.017040852 -0.0002226458
		 0 0.027368348 -0.0062339446 1.3600232e-15 -0.047194615 0.0062339446 1.3600232e-15;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "257B25A5-414A-D4EB-D823-6F9B37537BA7";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31921929 2.8702986 -0.13024271 ;
	setAttr ".rs" 184602275;
	setAttr ".lt" -type "double3" 0.031461362202597341 8.6736173798840355e-19 0.043207533313319842 ;
	setAttr ".ls" -type "double3" 1.016381247293398 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33551959616273025 2.8461290804487342 -0.17012622334319383 ;
	setAttr ".cbx" -type "double3" -0.30291898614842661 2.8944683281522865 -0.090359173147758806 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "7D7288C5-744C-9218-A4AB-D79D6B86A80A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[122:124]" -type "float3"  0.028131936 0.0059994422 0.031272709
		 0.049108539 0.0088099372 -0.030607626 -0.028069688 -0.031080533 -0.031272709;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "EE743F3C-294D-A3E2-EBB6-87B5D27A0230";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.32714427 2.8205686 -0.13685514 ;
	setAttr ".rs" 1037887264;
	setAttr ".lt" -type "double3" 0.037932029904496949 -1.6740081543176188e-16 0.060972280104451368 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.35035565642173161 2.809874793682682 -0.17130475683472973 ;
	setAttr ".cbx" -type "double3" -0.30393287408758907 2.8312623707395668 -0.10240550901875452 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "57237819-DE4E-D132-3F7E-86A774199A8D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[125:127]" -type "float3"  0.023029171 0.010504164 0.0082960799
		 0.032685742 0.013865715 -0.0080983229 0.0069668042 -0.013865718 -0.0082960818;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "9F3417BB-8C4E-FFF8-8A52-21821C6B4F1A";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31820062 2.7511556 -0.14266205 ;
	setAttr ".rs" 1363088283;
	setAttr ".lt" -type "double3" 0.033857843555643599 -1.5612511283791264e-17 0.041880754356404613 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.34321960742745378 2.7443430630308265 -0.17711167837567843 ;
	setAttr ".cbx" -type "double3" -0.29318162153221106 2.7579680887800331 -0.10821243055970323 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "535587FF-FA4D-D6E2-D73A-FF9FAB893393";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[128:130]" -type "float3"  -0.003782647 0.010898225 0
		 0.0034985831 0.015906839 0 -0.0034985831 -0.015906841 0;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "63A18DAD-AB46-46BB-3775-32A8D1214CFC";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.2848168 2.7029605 -0.14524469 ;
	setAttr ".rs" 658343536;
	setAttr ".lt" -type "double3" 0.026693929677041012 7.4376269032505604e-17 0.03347377957531638 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30848060325953214 2.6869517771345253 -0.18375684900378431 ;
	setAttr ".cbx" -type "double3" -0.26115301147483738 2.7189690081220741 -0.10673252539024618 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "8C4D867B-F84E-C7D5-6DFE-F49B927876E2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[131:133]" -type "float3"  -0.021836488 -0.0056415042
		 -0.0061450088 -0.018581018 -0.0017305994 0.0059985262 -0.013335082 -0.023321766 0.0061450079;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "D47A6C62-644A-70F7-E396-BC8ACAA9EFEA";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.24533288 2.6989717 -0.14639471 ;
	setAttr ".rs" 406250921;
	setAttr ".lt" -type "double3" 0.026209851142285346 6.4184768611141862e-17 0.033145004968582352 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24771800311852404 2.6772153584104652 -0.17577926721648013 ;
	setAttr ".cbx" -type "double3" -0.24294777477091511 2.7207279411893959 -0.11701017440485421 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "490C1D18-5041-E7FC-3411-C58F6345BCE8";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[134:136]" -type "float3"  -0.03142415 0.0082409326 0.013806492
		 -0.043784179 0.014599853 -0.013477376 0.042551931 0.0031044048 -0.013806493;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "D54D81EA-C947-7AB3-6449-F3967965F167";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.20906577 2.7145638 -0.1290381 ;
	setAttr ".rs" 478993387;
	setAttr ".lt" -type "double3" -0.018191503471690705 2.9056618222611519e-17 0.022806185635918744 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21949509903064768 2.7027332989317054 -0.15029755890980231 ;
	setAttr ".cbx" -type "double3" -0.19863644032344144 2.7263943163496132 -0.10777861769330231 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "7EEA344D-1042-6B27-33A9-C8B6F0F64899";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[137:139]" -type "float3"  -0.011893307 -0.0081888372
		 0.012290025 -0.023398984 -0.0092014363 -0.011997059 0.022238251 0.010650123 -0.012290025;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "6AC5DAC1-6E47-5BA8-912F-CC9399657B5D";
	setAttr ".ics" -type "componentList" 1 "f[93]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.21036622 2.7429211 -0.13224886 ;
	setAttr ".rs" 1091708744;
	setAttr ".lt" -type "double3" -0.0064144664953668705 1.0581813203458523e-16 0.027167697963246907 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.22006676023450739 2.7418054548841591 -0.14538324605717351 ;
	setAttr ".cbx" -type "double3" -0.20066567899911508 2.7440365759473915 -0.11911446628712252 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "1EA0DADF-EF41-06C8-A0FF-38B1F53D55CD";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[140:142]" -type "float3"  -0.0071169967 -0.0070878705
		 0.012290034 -0.01082742 -0.010914877 -0.011997072 -0.013648503 0.010914874 -0.012290034;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "4AF0F9DD-184A-162A-34A4-FC9E6F7D6BF6";
	setAttr ".ics" -type "componentList" 2 "f[3:4]" "f[8:9]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.016951835 0.80103993 -1.9702647e-08 ;
	setAttr ".rs" 528729978;
	setAttr ".lt" -type "double3" 1.6479873021779667e-16 2.5673907444456745e-16 0.23547690260355297 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.37459189880914689 0.72748794237195202 -0.22840834554868089 ;
	setAttr ".cbx" -type "double3" 0.40849556672306064 0.87459196725903698 0.22840830614338828 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "06CE2C54-EA4A-7139-8874-F48FBFE0E2F3";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[143:145]" -type "float3"  0.0077706357 -0.00050929445
		 0.011180842 0.010654821 -0.0022773552 -0.010914316 -0.01091574 0.0016579661 -0.011180842;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "3FA7AC9F-7944-ACDB-5502-F68936560564";
	setAttr ".ics" -type "componentList" 2 "f[3:4]" "f[8:9]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0043854499 0.60849637 -4.9256617e-08 ;
	setAttr ".rs" 379621591;
	setAttr ".lt" -type "double3" -6.1926790531998711e-17 -4.7704895589362195e-17 0.12829218208642695 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.37924944556730789 0.59270497242032238 -0.12829550541354173 ;
	setAttr ".cbx" -type "double3" 0.3880203456956075 0.62428780475674817 0.12829540690031019 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "01681F65-3E44-7212-2546-C19447D83CE9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[146:157]" -type "float3"  0.068167731 0.065852702 0.1553504
		 0.13014987 0.067351103 3.2171274e-17 0.2504845 -0.011686413 3.2171271e-17 0.13822748
		 -0.067355268 0.2471339 0.068167731 0.065852702 -0.15535045 0.13822742 -0.067355245
		 -0.24713396 0.050139092 0.063554481 -0.13973568 -0.0088779964 0.063554436 -1.4901161e-08
		 -0.27110037 -0.063554429 -1.4901161e-08 -0.08342094 -0.063554481 -0.23213531 0.05013904
		 0.063554473 0.13973567 -0.083421007 -0.063554488 0.23213531;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "A2F80741-D14A-8FEC-CCCB-0CA92D8B768B";
	setAttr ".ics" -type "componentList" 2 "f[3:4]" "f[8:9]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0023147468 0.48053756 -2.955397e-08 ;
	setAttr ".rs" 1787943774;
	setAttr ".lt" -type "double3" 3.6985773051197829e-17 1.7401444868392346e-17 0.051595883701765183 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.43188415852017348 0.4627751318555946 -0.14021626646829591 ;
	setAttr ".cbx" -type "double3" 0.42725466469678935 0.49829997697888562 0.14021620736035698 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "7FE8C816-CA49-D8D4-DAD9-94998CED5021";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[158:169]" -type "float3"  -0.060883746 0.00074088457
		 -0.012238066 -0.060582444 0.00089312164 6.9601853e-09 -0.076678611 0.0016381466 8.6776195e-09
		 -0.076678619 0.0016381354 -0.019560285 -0.060883746 0.00074088457 0.012238079 -0.076678611
		 0.0016381354 0.019560285 0.059368134 -0.0016114296 0.010978693 0.059368134 -0.0016114416
		 7.231395e-09 0.076678604 -0.0016381354 7.231395e-09 0.076678611 -0.0016381466 0.018238312
		 0.059368134 -0.0016114296 -0.010978682 0.076678619 -0.0016381466 -0.018238304;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "2FD60DA2-D24D-93CE-5E65-A3ADD374E671";
	setAttr ".ics" -type "componentList" 2 "f[182]" "f[186]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0050100512 0.44689694 0.11211528 ;
	setAttr ".rs" 1799374807;
	setAttr ".lt" -type "double3" 1.1102230246251565e-16 7.6327832942979512e-17 0.15119685333479299 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45481552408110909 0.39549400487958142 0.078699792324582934 ;
	setAttr ".cbx" -type "double3" 0.44479542185561216 0.49829985776959607 0.14553076962140171 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "5A588014-8B49-CFB1-8348-F499DF31FEF3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[170:181]" -type "float3"  -0.027234998 -0.014618157
		 -0.005408518 -0.027101221 -0.014550562 3.3764436e-09 -0.03424824 -0.014219753 4.1389967e-09
		 -0.03424824 -0.014219756 -0.0086597297 -0.027234998 -0.014618157 0.0054085245 -0.03424824
		 -0.014219756 0.0086597297 0.026562039 -0.015673604 0.0048747584 0.026562039 -0.015673604
		 4.1021577e-09 0.034248233 -0.015685458 4.1021577e-09 0.03424824 -0.015685465 0.008098172
		 0.026562048 -0.015673604 -0.0048747519 0.03424824 -0.015685465 -0.0080981683;
createNode polyTweak -n "polyTweak20";
	rename -uid "CC8A503D-3543-72A7-065A-A988B82A3477";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.075291283 ;
	setAttr ".tk[3]" -type "float3" -0.016230762 -0.0035165749 0.08293207 ;
	setAttr ".tk[4]" -type "float3" -0.011990444 -0.0035165749 -2.5274396e-10 ;
	setAttr ".tk[5]" -type "float3" -0.016230764 -0.0035165749 -0.082932077 ;
	setAttr ".tk[8]" -type "float3" 0.04139689 0 -0.075291313 ;
	setAttr ".tk[9]" -type "float3" 0.032351624 0 0 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.14321254 ;
	setAttr ".tk[13]" -type "float3" -2.6672849e-05 -0.013722038 0.15774606 ;
	setAttr ".tk[14]" -type "float3" 0.0080389204 -0.0097222626 -1.446586e-09 ;
	setAttr ".tk[15]" -type "float3" -2.6681302e-05 -0.013722038 -0.15774612 ;
	setAttr ".tk[18]" -type "float3" -0.0051875021 0 -0.14321254 ;
	setAttr ".tk[19]" -type "float3" -0.033952165 0 0 ;
	setAttr ".tk[146]" -type "float3" -0.0024837239 0.0048967293 0.05569781 ;
	setAttr ".tk[147]" -type "float3" -0.0026967898 0.0047890688 1.8803683e-09 ;
	setAttr ".tk[148]" -type "float3" 0.0086866077 0.004262181 6.6577638e-10 ;
	setAttr ".tk[149]" -type "float3" 0.0086866152 0.0042621852 0.088605002 ;
	setAttr ".tk[150]" -type "float3" -0.0024837239 0.0048967293 -0.055697832 ;
	setAttr ".tk[151]" -type "float3" 0.0086866077 0.0042621852 -0.088604957 ;
	setAttr ".tk[152]" -type "float3" -0.0017639736 0 -0.04479409 ;
	setAttr ".tk[153]" -type "float3" -0.0017639736 0 0 ;
	setAttr ".tk[154]" -type "float3" -0.02787826 0 0 ;
	setAttr ".tk[155]" -type "float3" -0.027878305 0 -0.074414015 ;
	setAttr ".tk[156]" -type "float3" -0.0017639928 0 0.044794057 ;
	setAttr ".tk[157]" -type "float3" -0.027878305 0 0.074414015 ;
	setAttr ".tk[158]" -type "float3" 0.065308198 0.01777672 0.048812304 ;
	setAttr ".tk[159]" -type "float3" 0.066419795 0.017811118 -0.0078123235 ;
	setAttr ".tk[160]" -type "float3" 0.0070300922 0.017979473 -0.0078123272 ;
	setAttr ".tk[161]" -type "float3" 0.0070300545 0.017979469 0.080754124 ;
	setAttr ".tk[162]" -type "float3" 0.065308198 0.01777672 -0.057960283 ;
	setAttr ".tk[163]" -type "float3" 0.0070300903 0.017979469 -0.089902066 ;
	setAttr ".tk[164]" -type "float3" -0.020736866 -5.8207661e-11 -0.049344976 ;
	setAttr ".tk[165]" -type "float3" -0.020736866 0 -1.1641532e-10 ;
	setAttr ".tk[166]" -type "float3" -0.029130584 0 -1.1641532e-10 ;
	setAttr ".tk[167]" -type "float3" -0.029130593 0 -0.081974149 ;
	setAttr ".tk[168]" -type "float3" -0.020736882 -5.8207661e-11 0.049344931 ;
	setAttr ".tk[169]" -type "float3" -0.029130585 0 0.081974104 ;
	setAttr ".tk[170]" -type "float3" 0.045173906 -0.0025309892 -0.022146955 ;
	setAttr ".tk[171]" -type "float3" 0.046683885 -0.0023593931 -0.0084170857 ;
	setAttr ".tk[172]" -type "float3" -0.033987451 -0.0015196176 -0.0084170839 ;
	setAttr ".tk[173]" -type "float3" -0.0339875 -0.0015196294 -0.030400367 ;
	setAttr ".tk[174]" -type "float3" 0.045173917 -0.0025309892 0.0053127855 ;
	setAttr ".tk[175]" -type "float3" -0.033987444 -0.0015196294 0.013566179 ;
	setAttr ".tk[176]" -type "float3" -0.0084283613 0 0 ;
	setAttr ".tk[177]" -type "float3" -0.0084283613 0 1.1641532e-10 ;
	setAttr ".tk[178]" -type "float3" 0.016618406 0 1.1641532e-10 ;
	setAttr ".tk[179]" -type "float3" 0.016618429 0 0 ;
	setAttr ".tk[180]" -type "float3" -0.0084283454 0 0 ;
	setAttr ".tk[181]" -type "float3" 0.016618444 0 0 ;
	setAttr ".tk[182]" -type "float3" -0.042610209 -0.027214287 0.060920186 ;
	setAttr ".tk[183]" -type "float3" -0.1548171 -0.029138044 0.010246791 ;
	setAttr ".tk[184]" -type "float3" -0.17558879 -0.016176885 -0.0032201279 ;
	setAttr ".tk[185]" -type "float3" -0.058786761 -0.014174339 0.049528357 ;
	setAttr ".tk[186]" -type "float3" 0.083969682 -0.022202687 0.043742269 ;
	setAttr ".tk[187]" -type "float3" 0.13652204 -0.022124307 -0.030901372 ;
	setAttr ".tk[188]" -type "float3" 0.0873245 -0.0040009227 0.033958022 ;
	setAttr ".tk[189]" -type "float3" 0.14202903 -0.0039193491 -0.043742292 ;
createNode polySplit -n "polySplit1";
	rename -uid "7A689492-3148-BF70-9575-29908D8DBA50";
	setAttr -s 22 ".v[0:21]" -type "float3"  -0.45249599 -0.024468999 
		0.729972 -0.54400301 0.018510999 0.69209999 -0.61055303 0.082980998 0.66330999 -0.65214598 
		0.15175 0.63660002 -0.68958098 0.246306 0.60510302 -0.68126202 0.35160801 0.56377703 
		-0.64798701 0.42252499 0.527264 -0.60639298 0.49129301 0.495509 -0.57311797 0.53427398 
		0.47851101 -0.43585899 0.58155203 0.491238 -0.352671 0.56436002 0.53450102 -0.28833401 
		0.53136301 0.58548999 -0.188336 0.44681901 0.66567302 -0.14894301 0.398285 0.69905603 
		-0.127731 0.351316 0.731363 -0.11561 0.30434701 0.76366901 -0.10955 0.232329 0.78243899 
		-0.11561 0.165007 0.78389102 -0.133791 0.097685002 0.78534299 -0.164094 0.049151 
		0.78639001 -0.209547 0.014707 0.78713202 -0.25500101 -0.018170999 0.78784102;
	setAttr -s 29 ".e[0:28]"  0.174527 45 45 45 45 45 0.177424 55 55 55
		 55 0.328576 65 65 65 0.080532797 0.0541372 56 56 56 56 0.30846801 46 46 46 46 46
		 46 0.174527;
	setAttr -s 29 ".d[0:28]"  -2147483514 0 1 2 3 4 
		-2147483593 5 6 7 8 -2147483583 9 10 11 -2147483494 -2147483582 12 
		13 14 15 -2147483592 16 17 18 19 20 21 -2147483514;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "C4CC064C-2043-BC97-99AA-4F9670921F08";
	setAttr -s 25 ".v[0:24]" -type "float3"  0.37528801 0.027232001 0.760472 
		0.46013501 0.050716002 0.72819602 0.52376997 0.111776 0.70240301 0.58134502 0.16031 
		0.67931199 0.60558599 0.21510699 0.66833502 0.62073803 0.24798501 0.661524 0.62679797 
		0.29182199 0.65767998 0.61770701 0.35757801 0.63198501 0.59952599 0.412375 0.59613502 
		0.572254 0.456213 0.57521099 0.535891 0.50474697 0.55382103 0.49952799 0.54075599 
		0.54034901 0.44195399 0.59085602 0.50775301 0.366198 0.61903697 0.48833901 0.281351 
		0.61903697 0.51161098 0.172263 0.55171603 0.58523101 0.151051 0.51257497 0.61709702 
		0.114688 0.44055599 0.66997999 0.111658 0.38419399 0.70874798 0.114688 0.33409399 
		0.74320799 0.105597 0.23546 0.78237098 0.111658 0.182229 0.78351903 0.14499 0.13526 
		0.78453201 0.196504 0.092987999 0.78544402 0.248018 0.066372998 0.78601801;
	setAttr -s 32 ".e[0:31]"  0.36782601 47 47 47 47 47 47 47 0.55450797
		 57 57 57 57 57 0.43946499 67 67 67 0.36286601 66 66 0.733109 56 56 56 0.53675699
		 46 46 46 46 46 0.36782601;
	setAttr -s 32 ".d[0:31]"  -2147483513 0 1 2 3 4 
		5 6 -2147483591 7 8 9 10 11 -2147483581 12 13 14 
		-2147483493 15 16 -2147483258 17 18 19 -2147483257 20 21 22 23 
		24 -2147483513;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "6C17ADB6-DE4F-B84C-74F6-B9B745427C76";
	setAttr -s 10 ".v[0:9]" -type "float3"  0.84298003 0.20315599 0.60110003 
		0.77120399 0.117863 0.63585103 0.69942898 0.043694999 0.66827297 0.60612202 -0.019347001 
		0.70343298 0.103696 -0.16768201 0.8082 -0.075741999 -0.186224 0.81307101 -0.097273998 
		-0.23072501 0.82476002 0.089341 -0.24185 0.82768202 0.48410401 -0.17880701 0.73469102 
		0.67789698 -0.100931 0.67696798;
	setAttr -s 17 ".e[0:16]"  1 204 204 204 204 0.19901 0.742419 36 36 0.69526303
		 36 36 0.453803 37 37 0.65090501 0.50876898;
	setAttr -s 17 ".d[0:16]"  -2147483227 0 1 2 3 -2147483601 
		-2147483523 4 5 -2147483524 6 7 -2147483523 8 9 -2147483601 -2147483512;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "1A92C872-6D42-DB87-43F2-DDBF8FA21BC0";
	setAttr -s 5 ".e[0:4]"  1 0.269162 0.46598899 0.37064499 1;
	setAttr -s 5 ".d[0:4]"  -2147483524 -2147483603 -2147483515 -2147483603 -2147483524;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "2D22984A-9C4A-D5EF-3D90-D69240BB7CD4";
	setAttr ".ics" -type "componentList" 3 "f[36:37]" "f[204]" "f[218:219]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.026026569 1.5931125 0.45838106 ;
	setAttr ".rs" 337368818;
	setAttr ".lt" -type "double3" -1.0896576974589907e-17 -1.0169816377914032e-16 -0.011273403068932856 ;
	setAttr ".ls" -type "double3" 0.84999999569250362 0.84999999569250362 0.84999999569250362 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.47936181791497484 1.2948887703758354 0.36957234870966538 ;
	setAttr ".cbx" -type "double3" 0.4273086804136223 1.8913362232786293 0.54718977431341376 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "C400D33F-264F-45AA-6CA7-8988303BD375";
	setAttr ".ics" -type "componentList" 4 "f[46:47]" "f[56:57]" "f[66:67]" "f[198:203]";
	setAttr ".ix" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.087121792 1.8306843 0.4447729 ;
	setAttr ".rs" 2020818424;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.42718633094239022 1.5055927244764442 0.34209117645039888 ;
	setAttr ".cbx" -type "double3" 0.25294274372058062 2.1557758061033363 0.5474546172850806 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "6A8C9F13-2642-0DDB-C171-B183888928A2";
	setAttr ".uopa" yes;
	setAttr -s 63 ".tk";
	setAttr ".tk[56]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[190]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[191]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[192]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[193]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[194]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[195]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[196]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[197]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[198]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[199]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[201]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[202]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[203]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[204]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[205]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[206]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[207]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[208]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[209]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[210]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[211]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[212]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[213]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[214]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[215]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[216]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[217]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[218]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[219]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[220]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[221]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[222]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[223]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[224]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[225]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[226]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[227]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[228]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[229]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[230]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[231]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[232]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[233]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[234]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[235]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[236]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[237]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[238]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[239]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[240]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[241]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[242]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[243]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[244]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[245]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[246]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[247]" -type "float3" 0 0 0.039961215 ;
	setAttr ".tk[248]" -type "float3" 0 0 0.039961215 ;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "53AC4B2A-874B-BF8B-2AE8-2BAFD8407B9C";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 1;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "28CDFC54-5D41-C1A1-A01C-B3B7C9770A99";
	setAttr ".uopa" yes;
	setAttr -s 63 ".tk[285:347]" -type "float3"  0 0.025134502 0.01030363 0
		 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363
		 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363 0 0.025134502
		 0.01030363 0 0.025134502 0.01030363 0 0.025134502 0.01030363;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FF6D670D-B040-AB95-10FF-39981DEA841D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1255\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 1\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1255\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1255\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FAC89034-8944-8189-EE27-7BB478E99F57";
	setAttr ".b" -type "string" "playbackOptions -min 13 -max 47 -ast 1 -aet 50 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "5A115D16-2949-127F-FADC-0090B72E216C";
	setAttr -s 1294 ".wl";
	setAttr ".wl[0:489].w"
		2 0 0.29122129082679749 3 0.70877870917320251
		1 0 1
		1 0 1
		1 2 1
		1 2 1
		2 0 0.57972973585128784 2 0.42027026414871216
		1 0 1
		1 0 1
		1 0 1
		2 0 0.37002080678939819 3 0.62997919321060181
		3 0 0.013241174600499311 1 0.0001321407338207573 3 0.98662668466567993
		1 0 1
		1 0 1
		1 0 1
		2 0 0.025361418724060059 2 0.97463858127593994
		1 0 1
		1 0 1
		1 0 1
		2 0 0.60015827417373657 3 0.39984172582626343
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		2 0 0.084313690662384033 2 0.91568630933761597
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 0 0.0098039507865905762 2 0.99019604921340942
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 0 0.55483372322853464 1 0.44516627677146542
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr ".wl[490:974].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.096225917339324951 3 0.90377408266067505
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.57253354787826538 2 0.42746645212173462
		1 0 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 0 0.93599014143801662 2 0.064009858561983421
		1 0 1
		1 0 1
		2 0 0.62009471654891968 2 0.37990528345108032
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.88582371175289154 3 0.11417628824710846
		1 0 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 0 1
		1 1 1
		3 0 0.71879023313522339 1 0.21965781724443473 3 0.061551949620341884
		2 0 0.9882352938875556 1 0.011764706112444401
		1 1 1
		1 1 1
		1 1 1
		2 0 0.039107918739318848 2 0.96089208126068115
		1 0 1
		1 1 1
		2 0 0.85815632343292236 2 0.14184367656707764
		2 0 0.011298170313239098 1 0.9887018296867609
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 1 1
		1 0 1
		1 1 1
		1 3 1
		1 0 1
		1 1 1
		1 3 1
		3 0 0.06950860470533371 1 0.9220657656284017 3 0.0084256296662646377
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 2 1
		1 0 1
		2 0 0.18477672338485718 2 0.81522327661514282
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.36724257469177246 3 0.63275742530822754
		1 0 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 0.033333361148834229;
	setAttr ".wl[974:1293].w"
		1 1 0.96666663885116577
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 2 1
		1 2 1
		2 0 0.95620733499526978 2 0.043792665004730225
		1 0 1
		1 0 1
		1 3 1
		1 3 1
		1 0 1
		1 0 1
		1 1 1
		1 0 1
		3 0 0.89392423629760742 1 0.10242765617590224 2 0.0036481075264903412
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.82981717586517334 2 0.17018282413482666
		2 0 0.96321682672781872 2 0.036783173272181308
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		2 0 0.0037880539894104004 1 0.9962119460105896
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.010204705779604377 0.55418575748263987 0.83233046933495369 0
		 0.99983050775427162 0.018410751310989217 -6.9388939039072238e-18 0 -0.015323829279484565 0.832189395774518 -0.55427970359436329 0
		 -1.017872013627485 0.0066546811242690204 0.025210720170180067 1;
	setAttr ".pm[1]" -type "matrix" 0.99999999999999978 4.5569711263898777e-17 3.8857805861880459e-16 0
		 3.6919620989979283e-16 0.99999999999999978 1.069777517568971e-15 0 -5.5511151231258086e-17 -7.9185599228752223e-16 0.99999999999999956 0
		 0.04503959293293968 -1.9954823631807979 0.022149657067964811 1;
	setAttr ".pm[2]" -type "matrix" -0.83426493119655798 -0.11694521371694798 0.94572889968907758 0
		 -0.17581891839831348 1.2542587524414814 -2.2555277434987328e-16 0 -0.93657196341320392 -0.13128636279313258 -0.84242160373277453 0
		 -0.10488272861675012 -0.82347499495797472 0.39763408694083391 1;
	setAttr ".pm[3]" -type "matrix" -0.010204705779604377 0.55418575748263987 0.83233046933495369 0
		 0.99983050775427162 0.018410751310989217 -6.9388939039072238e-18 0 -0.015323829279484565 0.832189395774518 -0.55427970359436329 0
		 -0.62081474658843983 -0.19047175411482006 -0.27453307803269278 1;
	setAttr ".gm" -type "matrix" 0.51666667542823708 0 0 0 0 1 0 0 0 0 0.66111110574868537 0
		 -0.070902850932072603 1.5367387739759559 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "F52A7CF5-C044-E8C0-6315-4F9D61A4675E";
createNode objectSet -n "skinCluster1Set";
	rename -uid "34D545C3-E642-177B-7852-8FA2E5AA8965";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "A9A33CF5-3541-8868-53DE-5A9710CC28B5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "1E15B9F5-3147-A9ED-0E17-299060F29CA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "D0B5FCFC-9E44-0E72-A5B1-228C8F3F507B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "93A05BB8-9549-09F1-107A-999D5ABB5DF5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "AEB5B797-6649-576D-A42C-83925E743691";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "2E461384-4849-489F-9BB2-FCA644B6D4C8";
	setAttr -s 4 ".wm";
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.035058664471538825
		 1.0175769745347987 -0.0071618615257426632 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.61758890989552462 0.62906580750446073 0.33072430016338833 0.3368702799064579 1 1
		 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.97807116412408879 2.3510530996823355e-16
		 -1.2447583583932504e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.61758890989552484 0.62906580750446051 0.33072430016338866 -0.33687027990645768 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 0.78956402470885412 0.78956402470885412 0.78956402470885412 0
		 0 0 0 -0.38325147412280203 -0.10838952053414357 -0.30973832009297247 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.045470312392853568 0.053271368841450395 -0.74668181658370425 0.66148384465224386 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.39705726703904509 0.19712643523908907
		 0.29974379820287278 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr ".bp" yes;
createNode animCurveTA -n "Body_rotateX";
	rename -uid "29F9C4CB-D040-16A6-EEAE-90BA45E1A94C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 0 15 0 17 0 20 -0.00879989846307167
		 22 -0.00879989846307167 25 -0.061617405151051761 30 -0.20855772219733232 35 -0.2992341459944754
		 40 -0.058243425675277641 42 -0.028122166480964696 45 -0.028122166480964696 50 -0.028122166480964696;
createNode animCurveTA -n "Body_rotateY";
	rename -uid "711BCCFB-DF4E-59DE-64D1-72851D65D195";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 0 15 0 17 0 20 1.2942015113609184
		 22 1.2942015113609184 25 -3.4220380963247075 30 -6.2821131022914232 35 -7.5148786569995609
		 40 -3.327197095480233 42 -2.313022104415638 45 -2.313022104415638 50 -2.313022104415638;
createNode animCurveTA -n "Body_rotateZ";
	rename -uid "18191865-3349-F639-FC61-E0BDB3BFDA98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 0 15 0 17 0 20 -0.77911798405500177
		 22 -0.77911798405500177 25 2.0625739988791443 30 3.7991227221694803 35 4.5540082304197922
		 40 2.0052559431778296 42 1.393069061565342 45 1.393069061565342 50 1.393069061565342;
createNode animCurveTU -n "Body_visibility";
	rename -uid "E38896BC-304C-4281-008E-BEA06C5C199A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTL -n "Body_translateX";
	rename -uid "AE6F27D3-A643-E763-C0F2-9F8037E701E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.035058664471538825 10 -0.035058664471538825
		 15 -0.035058664471538825 17 -0.03599485671321629 20 -0.03599485671321629 22 -0.03599485671321629
		 25 -0.03599485671321629 30 -0.03599485671321629 35 -0.03599485671321629 40 -0.03599485671321629
		 42 -0.03599485671321629 45 -0.03599485671321629 50 -0.03599485671321629;
createNode animCurveTL -n "Body_translateY";
	rename -uid "57C1E405-2142-AFD1-D25A-8DA2F59C6BEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1.0175769745347987 10 1.0175769745347987
		 15 1.0175769745347987 17 1.1093026533117181 20 1.018 22 1.018 25 1.109 30 1.018 35 1.018
		 40 1.109 42 1.109 45 1.018 50 1.018;
createNode animCurveTL -n "Body_translateZ";
	rename -uid "81CD89CE-4D4F-2F3A-8C1B-D185C5CABBD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.0071618615257426632 10 -0.0071618615257426632
		 15 -0.0071618615257426632 17 -0.0085676884446265235 20 -0.0085676884446265235 22 -0.0085676884446265235
		 25 -0.0085676884446265235 30 -0.0085676884446265235 35 -0.0085676884446265235 40 -0.0085676884446265235
		 42 -0.0085676884446265235 45 -0.0085676884446265235 50 -0.0085676884446265235;
createNode animCurveTU -n "Body_scaleX";
	rename -uid "B6139886-7C45-CB34-CC6C-2FBBCF0943F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTU -n "Body_scaleY";
	rename -uid "534ADF20-3344-E7DF-0351-9EAEDEE5BF9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTU -n "Body_scaleZ";
	rename -uid "BBAE3D33-2A45-6465-A3FF-249586A9BE07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTL -n "left_leg_translateX";
	rename -uid "606DFD34-CE46-3AEC-EC8D-23AD14E9B28D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.39061221661190448 10 -0.39061221661190448
		 15 -0.39061221661190448 17 -0.35455016050099336 20 -0.33246553879145835 22 -0.29434811255519222
		 25 -0.34630944100578198 30 -0.34838758478093745 35 -0.34838758478093745 40 -0.35602248627555583
		 42 -0.34482669640819402 45 -0.34441122227083898 50 -0.35323249293276932;
createNode animCurveTL -n "left_leg_translateY";
	rename -uid "84C754DA-CA46-1A94-533E-AF9FD4C6B5DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.20428224621331123 10 0.20428224621331123
		 15 0.20428224621331123 17 0.22855172659247042 20 0.22336702000411293 22 0.22809783108163406
		 25 0.25199151205191239 30 0.22117443789821051 35 0.22117443789821051 40 0.23023173668348496
		 42 0.25857874381356122 45 0.2693109586214919 50 0.27431320241587137;
createNode animCurveTL -n "left_leg_translateZ";
	rename -uid "B6863804-1341-98F7-6995-53A6C8A92684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.31163278346322948 10 0.31163278346322948
		 15 0.31163278346322948 17 0.35195518654847208 20 0.34334108251046552 22 0.3512010641914769
		 25 0.39089909416475049 30 0.33969822926423865 35 0.33969822926423865 40 0.35474643044907006
		 42 0.40184341554236258 45 0.41967439708641241 50 0.42798534859979409;
createNode animCurveTU -n "left_leg_visibility";
	rename -uid "264D3268-4947-3BB5-C691-37A86C7D5999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTA -n "left_leg_rotateX";
	rename -uid "BBAFF948-5849-A53D-3ADB-59990E765F85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.13378969639746216 10 0.27192763135055142
		 15 0.27192763135055142 17 0.22026469663479559 20 -0.038318597609300016 22 -1.323787843335146
		 25 -0.33007095563242278 30 0.27632652516246187 35 0.25708630870049426 40 0.13136477352134057
		 42 -0.53534220584207992 45 -1.2790899010969625 50 -1.2790899010969625;
createNode animCurveTA -n "left_leg_rotateY";
	rename -uid "E1FEBA76-8E4A-6DF7-C4D0-F9B048BBB7D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 4.387280930669089 10 8.9769575732468176
		 15 8.9769575732468176 17 13.146316091622252 20 17.476193194497299 22 26.420688230112042
		 25 20.319820720898591 30 9.687166423035185 35 11.821531450168216 40 15.081427669843455
		 42 21.887600342590886 45 26.204249251629193 50 26.204249251629193;
createNode animCurveTA -n "left_leg_rotateZ";
	rename -uid "9306466E-5549-8FE1-49ED-1FBC706DDE71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1.1483543582204609 10 0.563558440119866
		 15 0.563558440119866 17 -1.9573325717830581 20 -4.6375455336848601 22 -10.563843786446441
		 25 -6.4520706217193444 30 0.13679353801441038 35 -1.1516671990652554 40 -3.1450159270484064
		 42 -7.4766954217878245 45 -10.41154562000505 50 -10.41154562000505;
createNode animCurveTU -n "left_leg_scaleX";
	rename -uid "8782096B-8744-1390-F0D7-6396D65377C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTU -n "left_leg_scaleY";
	rename -uid "D0FF7C5A-FF4B-2956-F7A2-209F62E58558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTU -n "left_leg_scaleZ";
	rename -uid "38D36B2C-E643-3D40-5A5B-CBBC3914004A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTL -n "right_leg_translateX";
	rename -uid "58887FB2-8E40-012A-D8DD-0DA3D07ECBE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.38325147412280203 10 -0.3718473459629667
		 15 -0.35089384148373731 17 -0.3508938414837382 20 -0.35202471759256937 22 -0.3690457586585304
		 25 -0.3720378322254973 30 -0.37003281745958355 35 -0.37003281745958355 40 -0.38456684189282864
		 42 -0.38456684189282864 45 -0.40051940958706522 50 -0.43292896043646401;
createNode animCurveTL -n "right_leg_translateY";
	rename -uid "1CBC0D81-4F40-F802-7F82-1B9237001AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.10838952053414357 10 -0.15578827813186313
		 15 -0.1750571573011806 17 -0.13403157543265368 20 -0.11191724792476904 22 -0.089015198113172295
		 25 -0.11110866121033923 30 -0.12745751098051872 35 -0.12745751098051872 40 -0.10575890675712993
		 42 -0.10575890675712993 45 -0.092683503270118317 50 -0.091895353700538349;
createNode animCurveTL -n "right_leg_translateZ";
	rename -uid "99412F80-0D43-4707-4CDD-65AE7DF74E52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -0.30973832009297247 10 -0.38848874159915991
		 15 -0.42050292157860625 17 -0.35234118003881465 20 -0.31559944458337874 22 -0.27754895196654972
		 25 -0.31425601940330516 30 -0.34141872940974499 35 -0.34141872940974499 40 -0.30536769813859038
		 42 -0.30536769813859038 45 -0.28364363813272092 50 -0.28233417115642717;
createNode animCurveTU -n "right_leg_visibility";
	rename -uid "27CFBBBE-EA4D-B270-2724-5C99CF3BFDCC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTA -n "right_leg_rotateX";
	rename -uid "F8D87D57-204C-5542-6147-66BE297BA56F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 16.828851990827662 15 21.901497908896825
		 17 12.5327551145038 20 5.3372322144902986 22 2.0439108410095104 25 2.0439108410095104
		 30 7.5849145487841394 35 7.5849145487841394 40 -1.2887326294030739 42 -1.2887326294030739
		 45 -4.4621754842408325 50 -4.4621754842408325;
createNode animCurveTA -n "right_leg_rotateY";
	rename -uid "2DD12BC1-4349-68C5-F291-8A86D3D8EFAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 -0.023957799121000219 15 -0.83201853426599237
		 17 0.36859356443636787 20 0.43248649996967148 22 0.21408954940323655 25 0.21408954940323655
		 30 0.49218900731799881 35 0.49218900731799881 40 -0.16605621629608175 42 -0.16605621629608175
		 45 -0.67801328919877435 50 -0.67801328919877435;
createNode animCurveTA -n "right_leg_rotateZ";
	rename -uid "828FCF5D-494C-8B44-6305-DF8E8B313B47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 13.792638903775551 15 17.928833526241572
		 17 10.274890010890186 20 4.3719700995548454 22 1.6726356227110202 25 1.6726356227110202
		 30 6.2159566093070309 35 6.2159566093070309 40 -1.0531969321417147 42 -1.0531969321417147
		 45 -3.6405625745027907 50 -3.6405625745027907;
createNode animCurveTU -n "right_leg_scaleX";
	rename -uid "888F7970-DA4F-E92B-A92D-6FB58CCB2C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.78956402470885412 10 0.78956402470885412
		 15 0.78956402470885412 17 0.78956402470885412 20 0.78956402470885412 22 0.78956402470885412
		 25 0.78956402470885412 30 0.78956402470885412 35 0.78956402470885412 40 0.78956402470885412
		 42 0.78956402470885412 45 0.78956402470885412 50 0.78956402470885412;
createNode animCurveTU -n "right_leg_scaleY";
	rename -uid "E6E5D8D2-0149-73B1-D3C9-F3AA8D4CD211";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.78956402470885412 10 0.78956402470885412
		 15 0.78956402470885412 17 0.78956402470885412 20 0.78956402470885412 22 0.78956402470885412
		 25 0.78956402470885412 30 0.78956402470885412 35 0.78956402470885412 40 0.78956402470885412
		 42 0.78956402470885412 45 0.78956402470885412 50 0.78956402470885412;
createNode animCurveTU -n "right_leg_scaleZ";
	rename -uid "99C009DF-1442-C6C5-BF67-908DEF52EF9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.78956402470885412 10 0.78956402470885412
		 15 0.78956402470885412 17 0.78956402470885412 20 0.78956402470885412 22 0.78956402470885412
		 25 0.78956402470885412 30 0.78956402470885412 35 0.78956402470885412 40 0.78956402470885412
		 42 0.78956402470885412 45 0.78956402470885412 50 0.78956402470885412;
createNode animCurveTL -n "Upper_body_translateX";
	rename -uid "AA96F5FB-A54A-0453-5E9A-E7BC042F83EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0.97807116412408879 10 0.9780711641240879
		 15 0.92952788948386234 17 1.0048252867166994 20 0.96054647855451836 22 0.93313548095623344
		 25 0.9957583561213369 30 0.96917070130407612 35 0.92839209438291614 40 1.0023443049063852
		 42 1.0023443049063852 45 0.97291972210888 50 0.93715495235526503;
createNode animCurveTL -n "Upper_body_translateY";
	rename -uid "52D24472-B04F-D8A1-6A0C-91A29670A80F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 2.3510530996823355e-16 10 0.066727464479973839
		 15 0.066727464479973492 17 0.0042657065814321223 20 0.0036635585249186367 22 -0.036557704975940991
		 25 -0.038813021976311972 30 -0.037047480677029593 35 -0.034339595564884515 40 -0.036928856005271744
		 42 -0.036928856005271744 45 -0.036213296188516271 50 -0.035343552944667504;
createNode animCurveTL -n "Upper_body_translateZ";
	rename -uid "4E85E5CF-2141-A0BD-583C-02A780731C39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -1.2447583583932504e-17 10 0.11086400193092238
		 15 0.11086400193092201 17 0.0070872362132468293 20 0.006086800428368149 22 -0.060738610505116704
		 25 -0.064485695090008996 30 -0.061552345799924538 35 -0.057053344346619891 40 -0.061355257508616201
		 42 -0.061355257508616201 45 -0.060166394397134101 50 -0.058721364037881897;
createNode animCurveTU -n "Upper_body_visibility";
	rename -uid "DF0D0448-574C-435D-D252-12AC3143FE1B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTA -n "Upper_body_rotateX";
	rename -uid "01DA36D1-1C40-CD3C-22D8-4D9F8FA3E528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 -0.38865070207558083 15 -0.38865070207558083
		 17 -0.091029939350713601 20 0.012675739136459073 22 0.17198888084855371 25 0.17198888084855371
		 30 0.17198888084855371 35 0.17198888084855371 40 0.17198888084855371 42 0.17198888084855371
		 45 0.24791589524204216 50 0.24791589524204216;
createNode animCurveTA -n "Upper_body_rotateY";
	rename -uid "54D46E54-B544-A66E-5480-229E1780F2DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 -0.16877331723710315 15 -0.16877331723710315
		 17 -0.033287754134686799 20 0.0043508420905402165 22 0.053301621426642562 25 0.053301621426642562
		 30 0.053301621426642562 35 0.053301621426642562 40 0.053301621426642562 42 0.053301621426642562
		 45 0.072998037982090896 50 0.072998037982090896;
createNode animCurveTA -n "Upper_body_rotateZ";
	rename -uid "54033235-7240-620D-0382-D0ABFE100C5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 10 -8.7799347041546927 15 -8.7799347041546927
		 17 -2.0066606309473451 20 0.27744658592177923 22 3.7283872535593208 25 3.7283872535593208
		 30 3.7283872535593208 35 3.7283872535593208 40 3.7283872535593208 42 3.7283872535593208
		 45 5.3524228457746448 50 5.3524228457746448;
createNode animCurveTU -n "Upper_body_scaleX";
	rename -uid "B95D25A8-954C-0A8C-E1BD-71A0CCC0DE01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTU -n "Upper_body_scaleY";
	rename -uid "74655E05-1F45-5951-9E62-E198F6DE81E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
createNode animCurveTU -n "Upper_body_scaleZ";
	rename -uid "3044B2F6-B147-AD28-7108-6F9AFDDCE849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 10 1 15 1 17 1 20 1 22 1 25 1 30 1 35 1
		 40 1 42 1 45 1 50 1;
select -ne :time1;
	setAttr ".o" 13;
	setAttr ".unw" 13;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":perspShape.msg" "imagePlaneShape1.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr ":perspShape.msg" "imagePlaneShape2.ltc";
connectAttr "skinCluster1.og[0]" "pSphereShape1.i";
connectAttr "skinCluster1GroupId.id" "pSphereShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pSphereShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "pSphereShape1.twl";
connectAttr "polySmoothFace1.out" "pSphereShape1Orig.i";
connectAttr "Body_scaleX.o" "Body.sx";
connectAttr "Body_scaleY.o" "Body.sy";
connectAttr "Body_scaleZ.o" "Body.sz";
connectAttr "Body_rotateX.o" "Body.rx";
connectAttr "Body_rotateY.o" "Body.ry";
connectAttr "Body_rotateZ.o" "Body.rz";
connectAttr "Body_visibility.o" "Body.v";
connectAttr "Body_translateX.o" "Body.tx";
connectAttr "Body_translateY.o" "Body.ty";
connectAttr "Body_translateZ.o" "Body.tz";
connectAttr "Body.s" "Upper_body.is";
connectAttr "Upper_body_translateX.o" "Upper_body.tx";
connectAttr "Upper_body_translateY.o" "Upper_body.ty";
connectAttr "Upper_body_translateZ.o" "Upper_body.tz";
connectAttr "Upper_body_visibility.o" "Upper_body.v";
connectAttr "Upper_body_rotateX.o" "Upper_body.rx";
connectAttr "Upper_body_rotateY.o" "Upper_body.ry";
connectAttr "Upper_body_rotateZ.o" "Upper_body.rz";
connectAttr "Upper_body_scaleX.o" "Upper_body.sx";
connectAttr "Upper_body_scaleY.o" "Upper_body.sy";
connectAttr "Upper_body_scaleZ.o" "Upper_body.sz";
connectAttr "Body.s" "right_leg.is";
connectAttr "right_leg_translateX.o" "right_leg.tx";
connectAttr "right_leg_translateY.o" "right_leg.ty";
connectAttr "right_leg_translateZ.o" "right_leg.tz";
connectAttr "right_leg_visibility.o" "right_leg.v";
connectAttr "right_leg_rotateX.o" "right_leg.rx";
connectAttr "right_leg_rotateY.o" "right_leg.ry";
connectAttr "right_leg_rotateZ.o" "right_leg.rz";
connectAttr "right_leg_scaleX.o" "right_leg.sx";
connectAttr "right_leg_scaleY.o" "right_leg.sy";
connectAttr "right_leg_scaleZ.o" "right_leg.sz";
connectAttr "Body.s" "left_leg.is";
connectAttr "left_leg_rotateX.o" "left_leg.rx";
connectAttr "left_leg_rotateY.o" "left_leg.ry";
connectAttr "left_leg_rotateZ.o" "left_leg.rz";
connectAttr "left_leg_visibility.o" "left_leg.v";
connectAttr "left_leg_translateX.o" "left_leg.tx";
connectAttr "left_leg_translateY.o" "left_leg.ty";
connectAttr "left_leg_translateZ.o" "left_leg.tz";
connectAttr "left_leg_scaleX.o" "left_leg.sx";
connectAttr "left_leg_scaleY.o" "left_leg.sy";
connectAttr "left_leg_scaleZ.o" "left_leg.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySphere1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace6.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace7.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace8.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace9.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace10.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace11.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace12.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace13.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace14.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace15.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace16.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace17.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace18.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace19.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace20.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace21.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace22.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak19.ip";
connectAttr "polyExtrudeFace22.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyExtrudeFace23.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace23.mp";
connectAttr "polyTweak21.out" "polyExtrudeFace24.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace24.out" "polyTweak22.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Body.wm" "skinCluster1.ma[0]";
connectAttr "Upper_body.wm" "skinCluster1.ma[1]";
connectAttr "right_leg.wm" "skinCluster1.ma[2]";
connectAttr "left_leg.wm" "skinCluster1.ma[3]";
connectAttr "Body.liw" "skinCluster1.lw[0]";
connectAttr "Upper_body.liw" "skinCluster1.lw[1]";
connectAttr "right_leg.liw" "skinCluster1.lw[2]";
connectAttr "left_leg.liw" "skinCluster1.lw[3]";
connectAttr "Body.obcc" "skinCluster1.ifcl[0]";
connectAttr "Upper_body.obcc" "skinCluster1.ifcl[1]";
connectAttr "right_leg.obcc" "skinCluster1.ifcl[2]";
connectAttr "left_leg.obcc" "skinCluster1.ifcl[3]";
connectAttr "Body.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pSphereShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pSphereShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Body.msg" "bindPose1.m[0]";
connectAttr "Upper_body.msg" "bindPose1.m[1]";
connectAttr "right_leg.msg" "bindPose1.m[2]";
connectAttr "left_leg.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[0]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "Body.bps" "bindPose1.wm[0]";
connectAttr "Upper_body.bps" "bindPose1.wm[1]";
connectAttr "right_leg.bps" "bindPose1.wm[2]";
connectAttr "left_leg.bps" "bindPose1.wm[3]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Character Model.ma
