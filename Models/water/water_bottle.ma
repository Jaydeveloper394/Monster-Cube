//Maya ASCII 2018 scene
//Name: water_bottle.ma
//Last modified: Fri, Jan 22, 2021 01:20:19 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 , 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "AEE842D9-4BC0-4521-4594-06B82E48D1AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.300062377107217 3.0493561934829181 -1.6713037440782366 ;
	setAttr ".r" -type "double3" -2.7383527207769256 453.39999999930848 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D9D0138B-4D20-54D0-035D-9299085D8C9B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.766175638108308;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "06042253-4A9D-ACB5-E6E4-D4B160687167";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "58792851-407F-E9E7-F232-209E9406EB88";
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
	rename -uid "2975A1A8-4E81-503F-241C-3ABB80D16136";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EB024F0F-4FEA-F5C1-81EA-89846215488E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C370033E-4983-4B2F-9908-3B8F447EC44A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C83C16B6-489C-6E71-02A1-2981465BCE14";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "water_bottle";
	rename -uid "2EB3D2D9-47BB-9C6D-E0E6-D294C3CC1A2D";
	setAttr ".t" -type "double3" 0 2.093707673941803 0 ;
	setAttr ".s" -type "double3" 2.5 5 2.5 ;
createNode mesh -n "water_bottleShape" -p "water_bottle";
	rename -uid "63CD5B38-4F7F-B924-2A4D-CFA55E5B11B3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 202 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.014652465 0.045958132 0.035708133 
		-0.012464182 0.045958132 0.067921102 -0.0090557486 0.045958132 0.093485504 -0.0047608418 
		0.045958132 0.10989875 -1.8365842e-09 0.045958132 0.11555395 0.0047608307 0.045958132 
		0.10989875 0.0090557439 0.045958132 0.093485534 0.012464087 0.045958132 0.067921102 
		0.014652439 0.045958132 0.0357082 0.01540637 0.045958132 -2.0662702e-08 0.014652439 
		0.045958132 -0.035708241 0.012464087 0.045958132 -0.067921102 0.0090557439 0.045958132 
		-0.093485504 0.0047608847 0.045958132 -0.10989875 -1.3774578e-09 0.045958132 -0.11555395 
		-0.0047608875 0.045958132 -0.10989875 -0.0090557439 0.045958132 -0.093485475 -0.012464087 
		0.045958132 -0.067921102 -0.014652439 0.045958132 -0.035708208 -0.01540637 0.045958132 
		-2.0662702e-08 -0.093676776 -0.0027914117 0.030437335 -0.079685993 -0.0027914117 
		0.057895508 -0.057895571 -0.0027914117 0.079685956 -0.030437335 -0.0027914117 0.093676776 
		-1.1741782e-08 -0.0027914117 0.098497204 0.030437335 -0.0027914117 0.093676776 0.057895508 
		-0.0027914117 0.079685956 0.079685956 -0.0027914117 0.057895508 0.093676776 -0.0027914117 
		0.030437307 0.098497204 -0.0027914117 -1.761277e-08 0.093676776 -0.0027914117 -0.030437335 
		0.079685956 -0.0027914117 -0.057895508 0.057895508 -0.0027914117 -0.079685956 0.030437324 
		-0.0027914117 -0.093676776 -8.8063921e-09 -0.0027914117 -0.098497204 -0.030437335 
		-0.0027914117 -0.093676776 -0.057895508 -0.0027914117 -0.079685956 -0.079685956 -0.0027914117 
		-0.057895508 -0.093676776 -0.0027914117 -0.030437335 -0.098497204 -0.0027914117 -1.761277e-08 
		-1.8365842e-09 0.17092596 -2.0662702e-08 -1.1741782e-08 -0.0027914117 -1.761277e-08 
		-8.8063921e-09 0.001056412 -0.098497204 0.030437324 0.001056412 -0.093676776 0.057895508 
		0.001056412 -0.079685956 0.079685956 0.001056412 -0.057895508 0.093676776 0.001056412 
		-0.030437335 0.098497204 0.001056412 -1.761277e-08 0.093676776 0.001056412 0.030437307 
		0.079685956 0.001056412 0.057895508 0.057895508 0.001056412 0.079685956 0.030437335 
		0.001056412 0.093676776 -1.1741782e-08 0.001056412 0.098497204 -0.030437335 0.001056412 
		0.093676776 -0.057895571 0.001056412 0.079685956 -0.079685993 0.001056412 0.057895508 
		-0.093676776 0.001056412 0.030437335 -0.098497204 0.001056412 -1.761277e-08 -0.093676776 
		0.001056412 -0.030437335 -0.079685956 0.001056412 -0.057895508 -0.057895508 0.001056412 
		-0.079685956 -0.030437335 0.001056412 -0.093676776 -8.8063921e-09 0.002482286 -0.098497204 
		0.030437324 0.002482286 -0.093676776 0.057895508 0.002482286 -0.079685956 0.079685956 
		0.002482286 -0.057895508 0.093676776 0.002482286 -0.030437335 0.098497204 0.002482286 
		-1.761277e-08 0.093676776 0.002482286 0.030437307 0.079685956 0.002482286 0.057895508 
		0.057895508 0.002482286 0.079685956 0.030437335 0.002482286 0.093676776 -1.1741782e-08 
		0.002482286 0.098497204 -0.030437335 0.002482286 0.093676776 -0.057895571 0.002482286 
		0.079685956 -0.079685993 0.002482286 0.057895508 -0.093676776 0.002482286 0.030437335 
		-0.098497204 0.002482286 -1.761277e-08 -0.093676776 0.002482286 -0.030437335 -0.079685956 
		0.002482286 -0.057895508 -0.057895508 0.002482286 -0.079685956 -0.030437335 0.002482286 
		-0.093676776 -3.3295897e-09 -0.061376512 -0.037240867 0.011508048 -0.061376512 -0.035418153 
		0.021889618 -0.061376512 -0.030128479 0.030128479 -0.061376512 -0.021889623 0.035418145 
		-0.061376512 -0.011508062 0.037240855 -0.061376512 -6.6591794e-09 0.035418145 -0.061376512 
		0.011508048 0.030128479 -0.061376512 0.021889618 0.021889618 -0.061376512 0.030128479 
		0.01150805 -0.061376512 0.035418153 -4.4394559e-09 -0.061376512 0.037240867 -0.011508066 
		-0.061376512 0.035418153 -0.021889644 -0.061376512 0.030128479 -0.030128503 -0.061376512 
		0.021889618 -0.035418183 -0.061376512 0.011508049 -0.037240855 -0.061376512 -6.6591794e-09 
		-0.035418145 -0.061376512 -0.011508058 -0.030128479 -0.061376512 -0.02188962 -0.021889618 
		-0.061376512 -0.030128479 -0.011508055 -0.061376512 -0.035418153 -4.1696349e-09 0.016021496 
		-0.0466366 0.014411493 0.016021496 -0.044354033 0.027412292 0.016021496 -0.0377298 
		0.037729789 0.016021496 -0.027412295 0.044354029 0.016021496 -0.014411504 0.046636581 
		0.016021496 -8.6291294e-09 0.044354044 0.016021496 0.014411483 0.037729777 0.016021496 
		0.027412292 0.027412295 0.016021496 0.03772977 0.014411496 0.016021496 0.044354051 
		-5.5595124e-09 0.016021496 0.046636585 -0.014411503 0.016021496 0.044354051 -0.027412323 
		0.016021496 0.037729792 -0.037729833 0.016021496 0.027412295 -0.044354055 0.016021496 
		0.014411493 -0.046636581 0.016021496 -8.6291294e-09 -0.044354033 0.016021496 -0.0144115 
		-0.037729789 0.016021496 -0.027412295 -0.027412295 0.016021496 -0.037729792 -0.014411499 
		0.016021496 -0.044354033 -1.3712903e-08 0.012564857 -0.15337631 0.047395866 0.012564857 
		-0.14586951 0.090152346 0.012564857 -0.12408406 0.12408401 0.012564857 -0.090152353 
		0.14586949 0.012564857 -0.0473959 0.15337619 0.012564857 -2.7425802e-08 0.14586949 
		0.012564857 0.047395859 0.12408402 0.012564857 0.090152353 0.090152353 0.012564857 
		0.124084 0.047395889 0.012564857 0.14586951 -1.8283867e-08 0.012564857 0.15337631 
		-0.047395907 0.012564857 0.14586951 -0.090152375 0.012564857 0.12408406 -0.12408411 
		0.012564857 0.090152353 -0.14586958 0.012564857 0.04739587 -0.15337619 0.012564857 
		-2.7425802e-08 -0.14586949 0.012564857 -0.0473959 -0.12408401 0.012564857 -0.090152353 
		-0.090152353 0.012564857 -0.12408403 -0.047395896 0.012564857 -0.14586951 -7.5669018e-09 
		0.0027914117 -0.084633589 0.026153274 0.0027914117 -0.080491953 0.04974667 0.0027914117 
		-0.068469994 0.068469994 0.0027914117 -0.04974667 0.080491953 0.0027914117 -0.026153283 
		0.084633589 0.0027914117 -1.5133791e-08 0.080491953 0.0027914117 0.026153265 0.068469994 
		0.0027914117 0.04974667 0.04974667 0.0027914117 0.068469994 0.026153283 0.0027914117 
		0.080491953 -1.008911e-08 0.0027914117 0.084633589 -0.026153283 0.0027914117 0.080491953 
		-0.049746696 0.0027914117 0.068469994 -0.068470053 0.0027914117 0.04974667 -0.080491953 
		0.0027914117 0.026153283 -0.084633589 0.0027914117 -1.5133791e-08 -0.080491953 0.0027914117 
		-0.026153283 -0.068469994 0.0027914117 -0.04974667 -0.04974667 0.0027914117 -0.068469994 
		-0.026153283 0.0027914117 -0.080491953 0.10656119 -0.047425017 -0.14666903 0.146669 
		-0.047425017 -0.10656125 0.17241973 -0.047425017 -0.056022558 0.18129292 -0.047425017 
		-3.241766e-08;
	setAttr ".pt[166:201]" 0.17241973 -0.047425017 0.056022491 0.146669 -0.047425017 
		0.10656119 0.10656124 -0.047425017 0.146669 0.056022529 -0.047425017 0.17241974 -2.16118e-08 
		-0.047425017 0.18129295 -0.056022562 -0.047425017 0.17241974 -0.1065613 -0.047425017 
		0.14666903 -0.14666906 -0.047425017 0.10656124 -0.17241977 -0.047425017 0.056022529 
		-0.18129292 -0.047425017 -3.241766e-08 -0.17241974 -0.047425017 -0.056022555 -0.146669 
		-0.047425017 -0.10656124 -0.10656124 -0.047425017 -0.14666902 -0.056022536 -0.047425017 
		-0.17241974 -1.620883e-08 -0.047425017 -0.18129295 0.056022495 -0.047425017 -0.17241974 
		-0.19983152 -0.016926493 -0.064929202 -0.16998661 -0.016926493 -0.12350255 -0.12350255 
		-0.016926493 -0.16998664 -0.064929187 -0.016926493 -0.19983159 -1.8785764e-08 -0.016926493 
		-0.21011528 0.064929135 -0.016926493 -0.19983159 0.12350254 -0.016926493 -0.16998664 
		0.16998661 -0.016926493 -0.12350257 0.19983149 -0.016926493 -0.064929217 0.21011528 
		-0.016926493 -3.7571528e-08 0.19983149 -0.016926493 0.064929128 0.16998662 -0.016926493 
		0.12350254 0.12350255 -0.016926493 0.16998662 0.064929172 -0.016926493 0.19983159 
		-2.5047694e-08 -0.016926493 0.21011528 -0.064929225 -0.016926493 0.19983159 -0.12350263 
		-0.016926493 0.16998664 -0.16998677 -0.016926493 0.12350255 -0.19983168 -0.016926493 
		0.064929143 -0.21011528 -0.016926493 -3.7571528e-08;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "ED372EB3-4101-0F96-3329-068BD4057E5F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C29099CD-46EE-6EF9-B2F0-488B5A0BEA7F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F4378243-4B37-26C5-22AC-FBA9EEB890AE";
createNode displayLayerManager -n "layerManager";
	rename -uid "C9E08D04-4246-E152-1B8D-F4A139B5EF3C";
createNode displayLayer -n "defaultLayer";
	rename -uid "A135D56A-4135-DC21-2943-5CAF9A99300E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2DCE10A5-4C76-5A34-986C-FE9D6E6A35CB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "07AEE320-41A2-1E1B-7662-87A038C134B5";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "B7D6E31B-4D59-936B-90D3-9987BD4D93D7";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "B4B83319-431A-C536-CAC3-34A63BE76214";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.84369188547134399;
	setAttr ".dr" no;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "779A7020-44B1-BFE5-3E5D-22BC83CC3AA1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.93134611845016479;
	setAttr ".dr" no;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "523012BA-4BD8-C5FE-B2EE-B6A973879806";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.83853459358215332;
	setAttr ".dr" no;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "2A420824-487A-4AC8-DEA0-AF97A21ECD90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.31444722414016724;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "9D356B3E-4062-C6CF-522E-E889AACC7D0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.051520448178052902;
	setAttr ".re" 220;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "3EEAF1F2-4423-AB48-05F5-51B9B6BEF680";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.84711438417434692;
	setAttr ".dr" no;
	setAttr ".re" 180;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "247BA198-43F8-1407-6204-2CB6CBABF582";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[260:261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.94270509481430054;
	setAttr ".dr" no;
	setAttr ".re" 263;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "F1DF8C92-4D1B-A65B-AD54-CA906EC94EEA";
	setAttr ".uopa" yes;
	setAttr -s 162 ".tk[0:161]" -type "float3"  -0.1520175 -0.091207534 0.049393438
		 -0.12931378 -0.091207534 0.09395197 -0.09395197 -0.091207534 0.12931377 -0.049393475
		 -0.091207534 0.15201741 -1.9054468e-08 -0.091207534 0.15984057 0.049393434 -0.091207534
		 0.15201735 0.093951963 -0.091207534 0.12931377 0.12931377 -0.091207534 0.093951933
		 0.15201737 -0.091207534 0.049393442 0.15984055 -0.091207534 -2.8581724e-08 0.15201737
		 -0.091207534 -0.049393475 0.12931375 -0.091207534 -0.093951963 0.093951933 -0.091207534
		 -0.12931377 0.049393442 -0.091207534 -0.15201741 -1.4290862e-08 -0.091207534 -0.15984057
		 -0.049393442 -0.091207534 -0.15201735 -0.093951963 -0.091207534 -0.12931375 -0.12931377
		 -0.091207534 -0.09395197 -0.15201737 -0.091207534 -0.049393468 -0.15984055 -0.091207534
		 -2.8581724e-08 -0.63830149 -0.1567995 0.20739684 -0.54297251 -0.1567995 0.39449146
		 -0.39449161 -0.1567995 0.54297233 -0.2073971 -0.1567995 0.63830107 -8.0007375e-08
		 -0.1567995 0.6711508 0.20739686 -0.1567995 0.63830101 0.3944914 -0.1567995 0.54297215
		 0.54297215 -0.1567995 0.39449129 0.6383009 -0.1567995 0.20739678 0.67115062 -0.1567995
		 -1.2001072e-07 0.6383009 -0.1567995 -0.20739707 0.54297209 -0.1567995 -0.39449158
		 0.39449129 -0.1567995 -0.54297233 0.20739681 -0.1567995 -0.63830107 -6.0005341e-08
		 -0.1567995 -0.6711508 -0.20739692 -0.1567995 -0.63830101 -0.3944914 -0.1567995 -0.54297227
		 -0.54297215 -0.1567995 -0.39449152 -0.6383009 -0.1567995 -0.20739701 -0.67115062
		 -0.1567995 -1.2001072e-07 -1.9054468e-08 -0.091207534 -2.8581724e-08 -8.0007375e-08
		 -0.1567995 -1.2001072e-07 -6.0005341e-08 0.053012773 -0.6711508 0.20739681 0.053012773
		 -0.63830107 0.39449129 0.053012773 -0.54297233 0.54297209 0.053012773 -0.39449158
		 0.63830084 0.053012773 -0.20739707 0.67115062 0.053012773 -1.2001072e-07 0.63830084
		 0.053012773 0.20739678 0.54297215 0.053012773 0.39449129 0.3944914 0.053012773 0.54297215
		 0.20739686 0.053012773 0.63830101 -8.0007375e-08 0.053012773 0.6711508 -0.2073971
		 0.053012773 0.63830107 -0.39449161 0.053012773 0.54297227 -0.54297251 0.053012773
		 0.39449146 -0.63830155 0.053012773 0.20739684 -0.67115062 0.053012773 -1.2001072e-07
		 -0.6383009 0.053012773 -0.20739701 -0.54297215 0.053012773 -0.39449152 -0.3944914
		 0.053012773 -0.54297227 -0.20739695 0.053012773 -0.63830101 -6.0005341e-08 0.13076253
		 -0.6711508 0.20739681 0.13076253 -0.63830107 0.39449129 0.13076253 -0.54297233 0.54297209
		 0.13076253 -0.39449158 0.63830084 0.13076253 -0.20739707 0.67115062 0.13076253 -1.2001072e-07
		 0.63830084 0.13076253 0.20739678 0.54297215 0.13076253 0.39449129 0.3944914 0.13076253
		 0.54297215 0.20739686 0.13076253 0.63830101 -8.0007375e-08 0.13076253 0.6711508 -0.2073971
		 0.13076253 0.63830113 -0.39449161 0.13076253 0.54297227 -0.54297251 0.13076253 0.39449146
		 -0.63830155 0.13076253 0.20739684 -0.67115062 0.13076253 -1.2001072e-07 -0.6383009
		 0.13076253 -0.20739701 -0.54297215 0.13076253 -0.39449152 -0.3944914 0.13076253 -0.54297227
		 -0.20739695 0.13076253 -0.63830101 -1.4290862e-08 0.091207542 -0.15984057 0.049393442
		 0.091207542 -0.15201746 0.093951933 0.091207542 -0.12931377 0.12931375 0.091207542
		 -0.093951963 0.15201737 0.091207542 -0.049393475 0.15984055 0.091207542 -2.8581724e-08
		 0.15201737 0.091207542 0.049393442 0.12931377 0.091207542 0.093951933 0.093951963
		 0.091207542 0.12931377 0.049393434 0.091207542 0.15201735 -1.9054468e-08 0.091207542
		 0.15984057 -0.049393475 0.091207542 0.15201746 -0.09395197 0.091207542 0.12931375
		 -0.12931378 0.091207542 0.09395197 -0.1520175 0.091207542 0.049393438 -0.15984055
		 0.091207542 -2.8581724e-08 -0.15201737 0.091207542 -0.049393468 -0.12931375 0.091207542
		 -0.09395197 -0.093951963 0.091207542 -0.12931375 -0.049393445 0.091207542 -0.15201735
		 -1.4290862e-08 -0.03384763 -0.15984057 0.049393442 -0.03384763 -0.15201746 0.093951933
		 -0.03384763 -0.12931377 0.12931375 -0.03384763 -0.093951963 0.15201737 -0.03384763
		 -0.049393475 0.15984055 -0.03384763 -2.8581724e-08 0.15201737 -0.03384763 0.049393442
		 0.12931377 -0.03384763 0.093951933 0.093951963 -0.03384763 0.12931377 0.049393434
		 -0.03384763 0.15201735 -1.9054468e-08 -0.03384763 0.15984057 -0.049393475 -0.03384763
		 0.15201741 -0.09395197 -0.03384763 0.12931377 -0.12931378 -0.03384763 0.09395197
		 -0.1520175 -0.03384763 0.049393438 -0.15984055 -0.03384763 -2.8581724e-08 -0.15201737
		 -0.03384763 -0.049393468 -0.12931375 -0.03384763 -0.09395197 -0.093951963 -0.03384763
		 -0.12931375 -0.049393442 -0.03384763 -0.15201735 -1.4290862e-08 -0.02740472 -0.15984057
		 0.049393442 -0.02740472 -0.15201746 0.093951933 -0.02740472 -0.12931377 0.12931375
		 -0.02740472 -0.093951963 0.15201737 -0.02740472 -0.049393475 0.15984055 -0.02740472
		 -2.8581724e-08 0.15201737 -0.02740472 0.049393442 0.12931377 -0.02740472 0.093951933
		 0.093951963 -0.02740472 0.12931377 0.049393434 -0.02740472 0.15201735 -1.9054468e-08
		 -0.02740472 0.15984057 -0.049393475 -0.02740472 0.15201741 -0.09395197 -0.02740472
		 0.12931377 -0.12931378 -0.02740472 0.09395197 -0.1520175 -0.02740472 0.049393438
		 -0.15984055 -0.02740472 -2.8581724e-08 -0.15201737 -0.02740472 -0.049393468 -0.12931375
		 -0.02740472 -0.09395197 -0.093951963 -0.02740472 -0.12931375 -0.049393442 -0.02740472
		 -0.15201735 -6.4143585e-08 0.16129814 -0.71743673 0.22169982 0.16129814 -0.68232089
		 0.42169762 0.16129814 -0.58041865 0.58041841 0.16129814 -0.42169791 0.68232065 0.16129814
		 -0.22170009 0.71743655 0.16129814 -1.2828721e-07 0.68232065 0.16129814 0.22169979
		 0.58041847 0.16129814 0.42169762 0.42169774 0.16129814 0.58041847 0.22169988 0.16129814
		 0.68232083 -8.5525087e-08 0.16129814 0.71743673 -0.22170012 0.16129814 0.68232095
		 -0.42169794 0.16129814 0.58041859 -0.58041883 0.16129814 0.4216978 -0.68232137 0.16129814
		 0.22169985 -0.71743655 0.16129814 -1.2828721e-07 -0.68232071 0.16129814 -0.22170003
		 -0.58041841 0.16129814 -0.42169785 -0.42169774 0.16129814 -0.58041859 -0.22169997
		 0.16129814 -0.68232083;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "02DAA21F-44DF-97D0-9CEA-A2AAA7853FF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[260:261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 2.5 0 0 0 0 5 0 0 0 0 2.5 0 0 2.093707673941803 0 1;
	setAttr ".wt" 0.49160552024841309;
	setAttr ".re" 291;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "4CAD80B8-44E0-77F1-D963-C092DDF4697C";
	setAttr ".uopa" yes;
	setAttr -s 142 ".tk";
	setAttr ".tk[0]" -type "float3" -0.17237113 -0.22351709 0.056006752 ;
	setAttr ".tk[1]" -type "float3" -0.14662716 -0.22351709 0.10653064 ;
	setAttr ".tk[2]" -type "float3" -0.1065308 -0.22351709 0.14662683 ;
	setAttr ".tk[3]" -type "float3" -0.056006487 -0.22351709 0.17237087 ;
	setAttr ".tk[4]" -type "float3" -2.1605654e-08 -0.22351709 0.18124139 ;
	setAttr ".tk[5]" -type "float3" 0.056006767 -0.22351709 0.17237087 ;
	setAttr ".tk[6]" -type "float3" 0.10653058 -0.22351709 0.14662685 ;
	setAttr ".tk[7]" -type "float3" 0.14662687 -0.22351709 0.10653049 ;
	setAttr ".tk[8]" -type "float3" 0.17237081 -0.22351709 0.056006692 ;
	setAttr ".tk[9]" -type "float3" 0.18124136 -0.22351709 -3.240832e-08 ;
	setAttr ".tk[10]" -type "float3" 0.17237081 -0.22351709 -0.056006473 ;
	setAttr ".tk[11]" -type "float3" 0.14662682 -0.22351709 -0.10653076 ;
	setAttr ".tk[12]" -type "float3" 0.10653049 -0.22351709 -0.14662683 ;
	setAttr ".tk[13]" -type "float3" 0.056006722 -0.22351709 -0.17237087 ;
	setAttr ".tk[14]" -type "float3" -1.620416e-08 -0.22351709 -0.18124139 ;
	setAttr ".tk[15]" -type "float3" -0.056006741 -0.22351709 -0.17237087 ;
	setAttr ".tk[16]" -type "float3" -0.10653058 -0.22351709 -0.14662683 ;
	setAttr ".tk[17]" -type "float3" -0.14662687 -0.22351709 -0.1065307 ;
	setAttr ".tk[18]" -type "float3" -0.17237081 -0.22351709 -0.056006785 ;
	setAttr ".tk[19]" -type "float3" -0.18124136 -0.22351709 -3.240832e-08 ;
	setAttr ".tk[20]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[40]" -type "float3" -2.1605654e-08 -0.22351709 -3.240832e-08 ;
	setAttr ".tk[41]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[82]" -type "float3" -2.4076428e-08 0.15797374 -0.26929018 ;
	setAttr ".tk[83]" -type "float3" 0.083215289 0.15797374 -0.25611046 ;
	setAttr ".tk[84]" -type "float3" 0.15828475 0.15797374 -0.21786055 ;
	setAttr ".tk[85]" -type "float3" 0.21786031 0.15797374 -0.15828493 ;
	setAttr ".tk[86]" -type "float3" 0.25611034 0.15797374 -0.083215341 ;
	setAttr ".tk[87]" -type "float3" 0.26929009 0.15797375 -4.8152856e-08 ;
	setAttr ".tk[88]" -type "float3" 0.25611034 0.15797375 0.083215229 ;
	setAttr ".tk[89]" -type "float3" 0.21786037 0.15797375 0.15828475 ;
	setAttr ".tk[90]" -type "float3" 0.15828484 0.15797375 0.21786037 ;
	setAttr ".tk[91]" -type "float3" 0.083215304 0.15797375 0.25611046 ;
	setAttr ".tk[92]" -type "float3" -3.210188e-08 0.15797375 0.26929018 ;
	setAttr ".tk[93]" -type "float3" -0.083215341 0.15797375 0.25611046 ;
	setAttr ".tk[94]" -type "float3" -0.15828495 0.15797375 0.21786049 ;
	setAttr ".tk[95]" -type "float3" -0.21786064 0.15797375 0.1582849 ;
	setAttr ".tk[96]" -type "float3" -0.25611049 0.15797375 0.083215304 ;
	setAttr ".tk[97]" -type "float3" -0.26929009 0.15797375 -4.8152856e-08 ;
	setAttr ".tk[98]" -type "float3" -0.2561104 0.15797375 -0.083215341 ;
	setAttr ".tk[99]" -type "float3" -0.21786031 0.15797374 -0.15828493 ;
	setAttr ".tk[100]" -type "float3" -0.15828484 0.15797374 -0.21786049 ;
	setAttr ".tk[101]" -type "float3" -0.083215326 0.15797374 -0.25611046 ;
	setAttr ".tk[102]" -type "float3" -1.1199286e-08 0 -0.12526195 ;
	setAttr ".tk[103]" -type "float3" 0.038708076 0 -0.1191313 ;
	setAttr ".tk[104]" -type "float3" 0.073627107 0 -0.10133906 ;
	setAttr ".tk[105]" -type "float3" 0.10133898 0 -0.073627189 ;
	setAttr ".tk[106]" -type "float3" 0.11913127 0 -0.03870808 ;
	setAttr ".tk[107]" -type "float3" 0.12526198 0 -1.7955266e-08 ;
	setAttr ".tk[108]" -type "float3" 0.11913101 0 0.038708076 ;
	setAttr ".tk[109]" -type "float3" 0.1013391 0 0.073627099 ;
	setAttr ".tk[110]" -type "float3" 0.073627114 0 0.10133919 ;
	setAttr ".tk[111]" -type "float3" 0.038708121 0 0.11913116 ;
	setAttr ".tk[112]" -type "float3" -1.4932404e-08 0 0.12526208 ;
	setAttr ".tk[113]" -type "float3" -0.038708143 0 0.11913116 ;
	setAttr ".tk[114]" -type "float3" -0.07362707 0 0.10133912 ;
	setAttr ".tk[115]" -type "float3" -0.10133907 0 0.073627092 ;
	setAttr ".tk[116]" -type "float3" -0.11913126 0 0.038708124 ;
	setAttr ".tk[117]" -type "float3" -0.12526198 0 -1.7955266e-08 ;
	setAttr ".tk[118]" -type "float3" -0.11913127 0 -0.038708087 ;
	setAttr ".tk[119]" -type "float3" -0.10133898 0 -0.073627181 ;
	setAttr ".tk[120]" -type "float3" -0.073627122 0 -0.10133907 ;
	setAttr ".tk[121]" -type "float3" -0.038708087 0 -0.1191313 ;
	setAttr ".tk[142]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[145]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[146]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[147]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[148]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[149]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[150]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[151]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[153]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[154]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[155]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[156]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[157]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[158]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[159]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[160]" -type "float3" 0 0.15551844 0 ;
	setAttr ".tk[161]" -type "float3" 0 0.15551844 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "970C38AB-4E50-D1DF-6C21-CC8BA6723FE3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1759\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1759\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1759\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "13C5271E-4675-625C-74AC-8FB78C11D38D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
connectAttr "polySplitRing8.out" "water_bottleShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySplitRing1.ip";
connectAttr "water_bottleShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "water_bottleShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "water_bottleShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "water_bottleShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "water_bottleShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "water_bottleShape.wm" "polySplitRing6.mp";
connectAttr "polyTweak1.out" "polySplitRing7.ip";
connectAttr "water_bottleShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing8.ip";
connectAttr "water_bottleShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak2.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "water_bottleShape.iog" ":initialShadingGroup.dsm" -na;
// End of water_bottle.ma
