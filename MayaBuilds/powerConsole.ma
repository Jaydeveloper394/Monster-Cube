//Maya ASCII 2019 scene
//Name: powerConsole.ma
//Last modified: Fri, Apr 30, 2021 09:39:51 AM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
createNode transform -s -n "persp";
	rename -uid "2A7A34EB-4370-E9AC-2183-44B8DEE8FE18";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.38769507817220367 0.05004985038547094 0.85849693714214192 ;
	setAttr ".r" -type "double3" 5.6616472703503886 18.600000000002588 -4.194794118311292e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4F1B6FF6-46F6-BDF9-4800-698007A76B5E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 0.88618866935879659;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "EAB11701-4E89-B3E0-97FB-869DE85F3101";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EEF013E5-4773-C88F-739B-1ABD5612B299";
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
	rename -uid "F414E3E6-4BCA-ED7D-3CF9-D79776C54109";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3F71EC9B-4DA0-C836-4DFB-9C809B91D3E0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.2372892192377971;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "8150A8F3-4049-D3D2-AD16-EEA728C15795";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FCBB9854-4B3A-2EC7-B57D-1F86E1386256";
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
createNode transform -n "powerConsole";
	rename -uid "71F46C9D-4D61-4E50-53BA-79BDD3B8445A";
createNode transform -n "powerConsole" -p "|powerConsole";
	rename -uid "AF71AF04-4780-1F27-745A-66BCF0F973C8";
	setAttr ".t" -type "double3" 0 0.055143727449917301 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.11663051369454618 0.10875190081479606 0.16270180161457298 ;
createNode mesh -n "powerConsoleShape" -p "|powerConsole|powerConsole";
	rename -uid "0C8CB4C7-4ABB-02CB-B294-7F8A3ACCCF17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57837525010108948 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "leverBase" -p "|powerConsole";
	rename -uid "C60D07E7-4BA2-0DE2-0FFA-59A3EC854E9E";
	setAttr ".t" -type "double3" 0.10114281229662268 0 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.041945548944012069 0.019305572532587547 0.041945548944012069 ;
createNode mesh -n "leverBaseShape" -p "leverBase";
	rename -uid "4E08439A-4DD7-EF79-5851-668E40D21615";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.5381864607334137 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "lever" -p "|powerConsole";
	rename -uid "EF8E2242-44CD-6F85-A6EB-5B8360706301";
	setAttr ".rp" -type "double3" 0 -0.034678818824505499 0 ;
	setAttr ".sp" -type "double3" 0 -0.99999999999998712 0 ;
	setAttr ".spt" -type "double3" 0 0.9653211811754816 0 ;
createNode mesh -n "leverShape" -p "lever";
	rename -uid "5CB33455-4E67-136C-28AF-968702DE170E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58333331346511841 0.67759928107261658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt";
	setAttr ".pt[19]" -type "float3" -0.0093933269 0.0057530496 1.048411e-08 ;
	setAttr ".pt[20]" -type "float3" -0.0093933418 0.0057530496 -0.15232882 ;
	setAttr ".pt[21]" -type "float3" -0.0093933269 -0.0057530496 1.048411e-08 ;
	setAttr ".pt[22]" -type "float3" -0.0093933418 -0.0057530496 -0.15232882 ;
	setAttr ".pt[23]" -type "float3" -0.0093933418 0.0057530496 0.15232883 ;
	setAttr ".pt[24]" -type "float3" -0.0093933418 -0.0057530496 0.15232883 ;
	setAttr ".pt[25]" -type "float3" 0.0093933083 0.0042112824 7.6747515e-09 ;
	setAttr ".pt[26]" -type "float3" 0.0093932971 0.0042112824 -0.1115109 ;
	setAttr ".pt[27]" -type "float3" 0.0093933083 -0.0042112926 7.6747515e-09 ;
	setAttr ".pt[28]" -type "float3" 0.0093932971 -0.0042112926 -0.1115109 ;
	setAttr ".pt[29]" -type "float3" 0.0093932971 0.0042112824 0.1115109 ;
	setAttr ".pt[30]" -type "float3" 0.0093932971 -0.0042112926 0.1115109 ;
	setAttr ".pt[31]" -type "float3" 0.0082591027 -0.0057530496 -0.15233406 ;
	setAttr ".pt[32]" -type "float3" 0.0082591027 -0.0057530496 1.0484419e-08 ;
	setAttr ".pt[33]" -type "float3" 0.0082591027 -0.0057530496 0.15233406 ;
	setAttr ".pt[34]" -type "float3" 0.0082591027 0.0057530496 0.15233406 ;
	setAttr ".pt[35]" -type "float3" 0.0082591027 0.0057530496 1.0484419e-08 ;
	setAttr ".pt[36]" -type "float3" 0.0082591027 0.0057530496 -0.15233406 ;
	setAttr ".pt[37]" -type "float3" -0.0082424283 -0.0057530496 -0.15232918 ;
	setAttr ".pt[38]" -type "float3" -0.0082423985 -0.0057530496 1.0484131e-08 ;
	setAttr ".pt[39]" -type "float3" -0.0082424283 -0.0057530496 0.15232916 ;
	setAttr ".pt[40]" -type "float3" -0.0082424283 0.0057530496 0.15232916 ;
	setAttr ".pt[41]" -type "float3" -0.0082423985 0.0057530496 1.0484131e-08 ;
	setAttr ".pt[42]" -type "float3" -0.0082424283 0.0057530496 -0.15232918 ;
	setAttr ".pt[43]" -type "float3" -0.0077153929 -0.0065942495 -0.17460366 ;
	setAttr ".pt[44]" -type "float3" -0.0077153891 -0.0065942495 1.2017184e-08 ;
	setAttr ".pt[45]" -type "float3" 0.0077320524 -0.0065942495 -0.17460927 ;
	setAttr ".pt[46]" -type "float3" 0.0077320896 -0.0065942495 1.2017511e-08 ;
	setAttr ".pt[47]" -type "float3" -0.0077153929 -0.0065942495 0.17460367 ;
	setAttr ".pt[48]" -type "float3" 0.0077320524 -0.0065942495 0.17460927 ;
	setAttr ".pt[49]" -type "float3" -0.0077153929 0.0065942495 0.17460367 ;
	setAttr ".pt[50]" -type "float3" 0.0077320524 0.0065942495 0.17460927 ;
	setAttr ".pt[51]" -type "float3" -0.0077153891 0.0065942495 1.2017184e-08 ;
	setAttr ".pt[52]" -type "float3" 0.0077320896 0.0065942495 1.2017511e-08 ;
	setAttr ".pt[53]" -type "float3" -0.0077153929 0.0065942495 -0.17460366 ;
	setAttr ".pt[54]" -type "float3" 0.0077320524 0.0065942495 -0.17460927 ;
	setAttr ".pt[55]" -type "float3" -0.20057739 -0.015788613 0.34741014 ;
	setAttr ".pt[56]" -type "float3" 0.20057739 -0.015788613 0.34741026 ;
	setAttr ".pt[57]" -type "float3" 0 -0.015788855 0 ;
	setAttr ".pt[58]" -type "float3" 0.40115479 -0.015788613 5.9776703e-08 ;
	setAttr ".pt[59]" -type "float3" 0.20057739 -0.015788613 -0.34741026 ;
	setAttr ".pt[60]" -type "float3" -0.20057739 -0.015788613 -0.34741026 ;
	setAttr ".pt[61]" -type "float3" -0.40115479 -0.015788613 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode polyExtrudeFace -n "polyExtrudeFace118";
	rename -uid "B0F87CB8-43C9-CD4C-415F-F9B52B69FCD1";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.11663051369454618 0 0 0 0 0.10875190081479606 0 0
		 0 0 0.16270180161457298 0 -8.0644180534089109 0.38960881374780965 7.2541603333151023 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.0861692 0.48071223 7.2541604 ;
	setAttr ".rs" 53308;
	setAttr ".lt" -type "double3" -4.9439852495707865e-16 -2.6645352591003757e-15 0.10134327820376106 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1227333102561836 0.48071222671228547 7.1728094325078162 ;
	setAttr ".cbx" -type "double3" -8.0496057378626347 0.48071223319440393 7.3355112341223885 ;
createNode polySplitRing -n "polySplitRing253";
	rename -uid "9EA06DE6-48C5-1ECA-2E10-B482931744CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.11663051369454618 0 0 0 0 0.10875190081479606 0 0
		 0 0 0.16270180161457298 0 -8.0644180534089109 0.38960881374780965 7.2541603333151023 1;
	setAttr ".wt" 0.6270020604133606;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak162";
	rename -uid "50E8AE1D-45D8-6222-6F61-0CB71447FE0C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 0.33771795 0 0 0.33771795
		 0 0 0.33771795 0 0 0.33771795 0;
createNode polyCube -n "polyCube10";
	rename -uid "8C11B0B7-484E-7C5D-577F-81BE28EA14CC";
	setAttr ".cuv" 4;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "03A42381-46C6-55DD-407F-13B6DF3C3523";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F8093E5D-43EF-D863-029C-08A2AF8CBEEA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8A52CC57-4310-CDCD-47EB-CF8BBEA69F44";
createNode displayLayerManager -n "layerManager";
	rename -uid "5B372656-4AC4-87E8-1196-99BE2478EC1E";
createNode displayLayer -n "defaultLayer";
	rename -uid "A4CD6CD2-4D76-6422-B7C4-D695825D79DA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "459F7020-458A-B2DB-55BF-C6824E90B431";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F66B06BF-4DB8-9CF0-D53B-78AED4DBCCA8";
	setAttr ".g" yes;
createNode polyExtrudeFace -n "polyExtrudeFace119";
	rename -uid "98323DAB-41BF-FD75-8A9F-FB84E50D0C2F";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 0.11663051369454618 0 0 0 0 0.10875190081479606 0 0
		 0 0 0.16270180161457298 0 0 0.066240491748014108 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.000679177 0.20801558 3.1032906e-07 ;
	setAttr ".rs" 40372;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.011137008782460271 0.15734391767672679 -0.081350280149168758 ;
	setAttr ".cbx" -type "double3" 0.0097786547937820916 0.25868722385374426 0.081350900807286491 ;
createNode polyTweak -n "polyTweak163";
	rename -uid "6B9A99EC-4B6C-B595-65E9-68BE24579C70";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[3]" -type "float3" 0 -0.077033408 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.077033408 0 ;
	setAttr ".tk[8]" -type "float3" -0.043163508 -2.220446e-16 0 ;
	setAttr ".tk[9]" -type "float3" -0.043163508 -2.220446e-16 0 ;
	setAttr ".tk[10]" -type "float3" -0.043163508 -2.220446e-16 0 ;
	setAttr ".tk[11]" -type "float3" -0.043163508 -2.220446e-16 0 ;
	setAttr ".tk[13]" -type "float3" -0.2224962 -2.220446e-16 0 ;
	setAttr ".tk[14]" -type "float3" -0.2224962 -2.220446e-16 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace120";
	rename -uid "125F3B02-404B-276D-5347-79A613927980";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 0.11663051369454618 0 0 0 0 0.10875190081479606 0 0
		 0 0 0.16270180161457298 0 0 0.066240491748014108 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.00067917653 0.20801559 3.079046e-07 ;
	setAttr ".rs" 56056;
	setAttr ".lt" -type "double3" 7.589415207398531e-19 0 -0.0041309796667914978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.010638678185838239 0.15975850678695291 -0.077473824105914219 ;
	setAttr ".cbx" -type "double3" 0.0092803250661251026 0.25627267363622863 0.0774744399151404 ;
createNode polyTweak -n "polyTweak164";
	rename -uid "08158C87-4C17-EB14-E646-4492AEC10289";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  -0.0042727198 0.022202566
		 -0.023825569 -0.0042727198 0.022202566 0.023825569 0.0042727198 -0.022202566 0.023825569
		 0.0042727198 -0.022202566 -0.023825569;
createNode polyExtrudeFace -n "polyExtrudeFace121";
	rename -uid "A6B3A2B2-487F-72A5-4F25-4B9ECECA02B0";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.11663051369454618 0 0 0 0 0.10875190081479606 0 0
		 0 0 0.16270180161457298 0 0 0.066240491748014108 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.034047402 0.15315518 3.079046e-07 ;
	setAttr ".rs" 40652;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.0097786547937820916 0.14896640838860981 -0.08135028499806031 ;
	setAttr ".cbx" -type "double3" 0.058316146667476448 0.15734393712308203 0.081350900807286491 ;
createNode polyExtrudeFace -n "polyExtrudeFace122";
	rename -uid "BBCEED60-4FF9-7D4D-1A2C-7BAAFA800F01";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.11663051369454618 0 0 0 0 0.10875190081479606 0 0
		 0 0 0.16270180161457298 0 0 0.066240491748014108 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.034047402 0.15315518 3.079046e-07 ;
	setAttr ".rs" 45787;
	setAttr ".lt" -type "double3" 1.4094628242311558e-17 0 0.0029616924284004836 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.013504012206106661 0.14960940212495577 -0.068862624273738904 ;
	setAttr ".cbx" -type "double3" 0.054590789255151879 0.15670094338673604 0.068863240082965085 ;
createNode polyTweak -n "polyTweak165";
	rename -uid "F630431D-4745-A001-DFE6-FDB937248E3A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.031941533 -0.0059124776
		 -0.076751836 -0.031941533 0.0059124776 -0.076751836 -0.031941533 0.0059124776 0.076751836
		 0.031941533 -0.0059124776 0.076751836;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1F42052E-40B3-662F-F288-95828537BC10";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 552\n            -height 327\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 552\n            -height 327\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 552\n            -height 327\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1115\n            -height 702\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1115\\n    -height 702\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1115\\n    -height 702\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7F2C249F-4CB3-35A0-F713-069CB93A90FE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 45 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "F2F544B1-4B77-2465-D2BB-C68D39298CE6";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace123";
	rename -uid "6B8860B5-4265-9FB7-E563-DEBD32A0F791";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.12044839 -5.0002993e-09 -7.5004483e-09 ;
	setAttr ".rs" 51363;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12044838482921023 -0.041945558944610245 -0.041945568945208428 ;
	setAttr ".cbx" -type "double3" 0.12044838482921023 0.041945548944012069 0.041945553944311161 ;
createNode polyExtrudeFace -n "polyExtrudeFace124";
	rename -uid "D74D7F89-4120-8A31-F60A-CD8F527F401E";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.12044839 -5.0002993e-09 -7.5004483e-09 ;
	setAttr ".rs" 53574;
	setAttr ".lt" -type "double3" 0 1.2933695424482048e-18 0.010561163784927205 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12044838482921023 -0.025027034474765286 -0.025027036974914832 ;
	setAttr ".cbx" -type "double3" 0.12044838482921023 0.025027024474167107 0.025027021974017565 ;
createNode polyTweak -n "polyTweak166";
	rename -uid "C9EEB876-4B76-4C16-19BC-F8A007FDE8AD";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  -0.3836042 0 0.12464041 -0.32631308
		 0 0.23708017 -4.8082448e-08 0 -7.2123676e-08 -0.23708022 0 0.32631302 -0.12464057
		 0 0.38360408 -4.8082448e-08 0 0.40334511 0.12464043 0 0.38360402 0.23708017 0 0.32631302
		 0.32631302 0 0.23708014 0.3836039 0 0.12464029 0.40334493 0 -7.2123676e-08 0.3836039
		 0 -0.12464056 0.32631302 0 -0.23708017 0.23708014 0 -0.32631302 0.12464035 0 -0.38360408
		 -3.6061838e-08 0 -0.40334511 -0.12464049 0 -0.38360402 -0.23708017 0 -0.32631302
		 -0.32631302 0 -0.23708017 -0.38360396 0 -0.12464055 -0.40334493 0 -7.2123676e-08;
createNode polyExtrudeFace -n "polyExtrudeFace125";
	rename -uid "E91A7DDC-400E-D06C-3129-48A4A1E0843B";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.13100955 -5.0002993e-09 -7.5004483e-09 ;
	setAttr ".rs" 35714;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.13100954429650499 -0.025027034474765286 -0.025027036974914832 ;
	setAttr ".cbx" -type "double3" 0.13100954429650499 0.025027024474167107 0.025027021974017565 ;
createNode polyExtrudeFace -n "polyExtrudeFace126";
	rename -uid "425AC772-4314-48E0-C7BD-8391A0B1E270";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.13100953 -5.0002993e-09 -7.5004483e-09 ;
	setAttr ".rs" 43616;
	setAttr ".lt" -type "double3" 1.1511293558471699e-19 4.3368086899420177e-19 0.0019694505069504471 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.13100953509089064 -0.0060704430993573375 -0.0060704455995068823 ;
	setAttr ".cbx" -type "double3" 0.13100953509089064 0.0060704330987591589 0.0060704305986096141 ;
createNode polyTweak -n "polyTweak167";
	rename -uid "2D30EF56-476F-98AD-F372-6C8C740C7AC0";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[81:101]" -type "float3"  -0.42981404 0 0.13965507 -0.36562151
		 0 0.26563999 -2.5198181e-08 0 -8.081205e-08 -0.26563996 0 0.36562151 -0.13965517
		 0 0.42981401 -5.3874654e-08 0 0.45193332 0.13965507 0 0.42981401 0.26564002 0 0.36562145
		 0.36562151 0 0.26563984 0.42981401 0 0.13965507 0.45193332 0 -8.081205e-08 0.42981401
		 0 -0.13965517 0.36562148 0 -0.26564005 0.26563984 0 -0.36562151 0.13965484 0 -0.42981401
		 -4.0406029e-08 0 -0.45193332 -0.13965484 0 -0.42981401 -0.26563996 0 -0.36562151
		 -0.36562154 0 -0.26563999 -0.42981401 0 -0.1396551 -0.45193332 0 -8.081205e-08;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "1A2D143B-48EE-FAA0-FE0A-8491D75B7BB4";
	setAttr ".dc" -type "componentList" 7 "f[4:13]" "f[24:33]" "f[44:53]" "f[64:73]" "f[84:93]" "f[104:113]" "f[124:133]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "5F9FA348-4DE9-F9CA-EAEC-B89126E62235";
	setAttr ".ics" -type "componentList" 1 "e[24:25]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 15;
	setAttr ".sv2" 5;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "9EA71B99-4BA4-73AE-B485-3C90B8B5E820";
	setAttr ".ics" -type "componentList" 2 "e[70]" "e[72]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 27;
	setAttr ".sv2" 39;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "A8C03B7D-4FE9-13F1-B5B0-4B9A4520B3A7";
	setAttr ".ics" -type "componentList" 2 "e[116]" "e[119]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 49;
	setAttr ".sv2" 62;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polySplitRing -n "polySplitRing254";
	rename -uid "422A79F3-4544-F6C1-8B27-93B898EF1BA1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:30]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".wt" 0.7700151801109314;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing255";
	rename -uid "FB11DDDF-4F59-9E05-B39C-3C96B810202E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:30]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".wt" 0.26058191061019897;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace127";
	rename -uid "8C18727E-4D81-FB6C-EA87-6EBB6D1DB746";
	setAttr ".ics" -type "componentList" 4 "f[76]" "f[84]" "f[87]" "f[90:94]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.09726911 0.020972773 -7.5004483e-09 ;
	setAttr ".rs" 43763;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.081837239764035133 -1.2500747723583004e-09 -0.041945568945208428 ;
	setAttr ".cbx" -type "double3" 0.1127009800719271 0.041945548944012069 0.041945553944311161 ;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "095E9EA0-46BB-D697-95CB-B3A1FFF6D279";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak168";
	rename -uid "0BE01099-4162-259B-E5E5-EEB83728DF1A";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[90:109]" -type "float3"  0.29351524 -0.2133664 0.71024454
		 0.29351524 -0.42323926 0.71024454 0.29351526 -0.2133664 -0.71024454 0.29351526 -0.42323926
		 -0.71024454 0.29351524 0.30620319 0.71024454 0.29351526 0.30620319 -0.71024454 -0.28108424
		 0.30620319 -0.41747129 -0.12395571 0.30620319 -0.57459974 -0.28108424 -0.2133664
		 -0.41747129 -0.12395571 -0.2133664 -0.57459974 -0.12395606 0.30620319 0.57459974
		 -0.28108475 0.30620319 0.41747123 -0.12395606 -0.2133664 0.57459974 -0.28108475 -0.2133664
		 0.41747123 -0.38196763 0.30620319 0.2194774 -0.38196763 -0.2133664 0.2194774 -0.41672897
		 0.30620319 -1.2700163e-07 -0.41672897 -0.2133664 -1.2700163e-07 -0.38196754 0.30620319
		 -0.21947756 -0.38196754 -0.2133664 -0.21947756;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "EF13889C-4E9B-2A38-7BDD-2D9BB61AE99A";
	setAttr ".dc" -type "componentList" 1 "f[100]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "922DD882-4699-E87B-E19E-AB9821D4BFE2";
	setAttr ".dc" -type "componentList" 1 "f[96]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "214A335F-4D47-070F-E1F8-1FBC9568BBDE";
	setAttr ".dc" -type "componentList" 1 "f[96]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "4C324A7F-4C83-CA9B-C25A-EFBEF0011F99";
	setAttr ".dc" -type "componentList" 1 "f[76]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "79D18AB2-47CE-F3F5-0135-488619877616";
	setAttr ".dc" -type "componentList" 1 "f[86]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "20DAD37E-4E2B-F9CB-D4F9-9F81622D7114";
	setAttr ".dc" -type "componentList" 1 "f[95]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "FEF9113B-466E-DAE8-3D0F-C5AC865EC329";
	setAttr ".dc" -type "componentList" 1 "f[93]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "7C82C892-4F75-1F0E-2278-34A327D6972F";
	setAttr ".dc" -type "componentList" 1 "f[93]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "4CD52C6D-4FFD-7E75-496E-B9A341694004";
	setAttr ".dc" -type "componentList" 1 "f[70]";
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "710C8AC0-4C2D-F21C-A6B2-978083539C8C";
	setAttr ".ics" -type "componentList" 5 "e[24:25]" "e[146]" "e[148]" "e[166]" "e[168]";
	setAttr ".ix" -type "matrix" 0 0.041945548944012069 0 0 -0.019305572532587547 0 0 0
		 0 0 0.041945548944012069 0 0.10114281229662268 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 15;
	setAttr ".sv2" 5;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polySplitRing -n "polySplitRing256";
	rename -uid "16DE9226-4AF6-A276-BB31-928ECC92F899";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".wt" 0.94232797622680664;
	setAttr ".dr" no;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak169";
	rename -uid "E467FD9A-4394-6A5E-9E8F-C280FEB700F7";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[0:13]" -type "float3"  -2.7111646e-13 4.2077453e-14
		 0 -3.0736524e-13 4.2077453e-14 0 -2.9265479e-13 4.2077453e-14 0 -3.0198066e-13 4.2077453e-14
		 0 -2.7616798e-13 4.2077453e-14 0 -2.4313884e-13 4.2077453e-14 0 -1.4476198e-12 4.21915388
		 0 -1.4794832e-12 4.21915388 0 -1.4942492e-12 4.21915388 0 -1.478484e-12 4.21915388
		 0 -1.4482859e-12 4.21915388 0 -1.4317436e-12 4.21915388 0 -2.9067886e-13 4.2077453e-14
		 0 -1.463742e-12 4.21915388 0;
createNode polyExtrudeFace -n "polyExtrudeFace128";
	rename -uid "E375252A-4F54-CB1D-4D59-8683597D1735";
	setAttr ".ics" -type "componentList" 2 "f[18]" "f[23]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.10712181 0.18736854 4.3224893e-10 ;
	setAttr ".rs" 64126;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.10530882465072942 0.18220967857359599 -0.0062803581546571471 ;
	setAttr ".cbx" -type "double3" 0.10893479165269118 0.19252741895749739 0.0062803590191549963 ;
createNode polyExtrudeFace -n "polyExtrudeFace129";
	rename -uid "6CD47645-40FC-47EB-51E8-96AD059384BC";
	setAttr ".ics" -type "componentList" 2 "f[18]" "f[23]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.11027395 0.18736856 6.4837341e-10 ;
	setAttr ".rs" 43790;
	setAttr ".lt" -type "double3" 1.5209800056931047e-17 -5.5511151231257827e-17 0.040760445187163673 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1102739316716311 0.18220967857359599 -0.0062803581546571471 ;
	setAttr ".cbx" -type "double3" 0.11027396711604291 0.19252743267446759 0.0062803594514039204 ;
createNode polyTweak -n "polyTweak170";
	rename -uid "8BFDDB7B-451A-7425-1F17-6BAA4BBED462";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[20:25]" -type "float3"  0.18466559 -1.0658141e-13
		 0 0.68466073 -1.0658141e-13 0 0.18466559 -1.0658141e-13 0 0.68466073 -1.0658141e-13
		 0 0.68466073 -1.0658141e-13 0 0.68466073 -1.0658141e-13 0;
createNode polySplitRing -n "polySplitRing257";
	rename -uid "1A4C957B-46F5-BB8F-1C56-E4955263C738";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[53:54]" "e[56]" "e[58]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".wt" 0.88985460996627808;
	setAttr ".dr" no;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing258";
	rename -uid "79782782-421D-0658-326D-7CB517240983";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[53:54]" "e[56]" "e[58]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".wt" 0.065197296440601349;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace130";
	rename -uid "6AD7E3CB-43F4-4686-E68D-C4980A87AC1E";
	setAttr ".ics" -type "componentList" 1 "f[42:47]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.12959176 0.18736856 4.3224893e-10 ;
	setAttr ".rs" 51096;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.11263869032611765 0.18220967857359599 -0.0062805738468704594 ;
	setAttr ".cbx" -type "double3" 0.14654483627304463 0.19252744639143779 0.0062805747113683086 ;
createNode polyExtrudeFace -n "polyExtrudeFace131";
	rename -uid "FECCFBF8-4CD2-9891-93F5-2FBE3F69FA7A";
	setAttr ".ics" -type "componentList" 1 "f[12:17]";
	setAttr ".ix" -type "matrix" 0.0072519335716745787 0 0 0 0 0.028766571497524016 0 0
		 0 0 0.0072519335716745787 0 0.1016828580810166 0.042390255681031032 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.10168283 0.19252746 0 ;
	setAttr ".rs" 39929;
	setAttr ".lt" -type "double3" 0 0 0.0026510442733103101 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.094430903761393639 0.19252746010840799 -0.0062803594514039204 ;
	setAttr ".cbx" -type "double3" 0.10893477090474279 0.19252746010840799 0.0062803594514039204 ;
createNode polyTweak -n "polyTweak171";
	rename -uid "F53E6EA2-4947-EDDF-1345-5F97D6186771";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[26]" -type "float3" -0.29772565 0.048059899 1.5973827e-08 ;
	setAttr ".tk[27]" -type "float3" -0.29772463 0.048059899 -0.23209301 ;
	setAttr ".tk[28]" -type "float3" -0.29772565 -0.048059899 1.5973827e-08 ;
	setAttr ".tk[29]" -type "float3" -0.29772463 -0.048059899 -0.23209301 ;
	setAttr ".tk[30]" -type "float3" -0.29772463 0.048059899 0.23209301 ;
	setAttr ".tk[31]" -type "float3" -0.29772463 -0.048059899 0.23209301 ;
	setAttr ".tk[44]" -type "float3" 0.14932582 0.026223605 0.1266357 ;
	setAttr ".tk[45]" -type "float3" 0.14932552 0.026223605 -8.7157641e-09 ;
	setAttr ".tk[46]" -type "float3" -0.14932546 0.026223605 0.12663971 ;
	setAttr ".tk[47]" -type "float3" -0.14932583 0.026223605 -8.716003e-09 ;
	setAttr ".tk[48]" -type "float3" 0.14932582 0.026223605 -0.12663567 ;
	setAttr ".tk[49]" -type "float3" -0.14932546 0.026223605 -0.12663971 ;
	setAttr ".tk[50]" -type "float3" 0.14932582 -0.026223617 -0.12663567 ;
	setAttr ".tk[51]" -type "float3" -0.14932546 -0.026223617 -0.12663971 ;
	setAttr ".tk[52]" -type "float3" 0.14932552 -0.026223617 -8.7157641e-09 ;
	setAttr ".tk[53]" -type "float3" -0.14932583 -0.026223617 -8.716003e-09 ;
	setAttr ".tk[54]" -type "float3" 0.14932582 -0.026223617 0.1266357 ;
	setAttr ".tk[55]" -type "float3" -0.14932546 -0.026223617 0.12663971 ;
createNode animCurveTA -n "lever_rotateX";
	rename -uid "00CA9D9E-4543-FFFB-C4C9-CDABA38E4FF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -14.961876837662514 15 24.445857049418592
		 16 24.445857049418592 30 -14.962 31 -14.962 35 -8.0042792116495267 38 -14.962 41 -8.004
		 45 -14.962;
createNode animCurveTA -n "lever_rotateY";
	rename -uid "E02B49E7-4EBE-130D-9AF7-36B8E996BA25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 15 0 16 0 30 0 31 0 35 0 38 0 41 0 45 0;
createNode animCurveTA -n "lever_rotateZ";
	rename -uid "A6B53D4B-40B6-D417-93F3-A4B69745D7C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 15 0 16 0 30 0 31 0 35 0 38 0 41 0 45 0;
createNode animCurveTU -n "lever_visibility";
	rename -uid "95494592-4429-BBD7-4606-34B76C96F254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 15 1 16 1 30 1 31 1 35 1 38 1 41 1 45 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "lever_translateX";
	rename -uid "0F5AE158-4BFB-22BD-1119-10B1AA00E5F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.1016828580810166 15 0.1016828580810166
		 16 0.1016828580810166 30 0.1016828580810166 31 0.1016828580810166 35 0.1016828580810166
		 38 0.1016828580810166 41 0.1016828580810166 45 0.1016828580810166;
createNode animCurveTL -n "lever_translateY";
	rename -uid "AC9E3C3B-4167-3C48-0208-E08A5292C189";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.048302503008012886 15 0.048302503008012886
		 16 0.048302503008012886 30 0.048302503008012886 31 0.048302503008012886 35 0.048302503008012886
		 38 0.048302503008012886 41 0.048302503008012886 45 0.048302503008012886;
createNode animCurveTL -n "lever_translateZ";
	rename -uid "38962E1E-4422-AC36-EE7C-598AC1E3EAE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 15 0 16 0 30 0 31 0 35 0 38 0 41 0 45 0;
createNode animCurveTU -n "lever_scaleX";
	rename -uid "39FA69E0-4280-A125-286D-2EBD2440993B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.0072519335716745787 15 0.0072519335716745787
		 16 0.0072519335716745787 30 0.0072519335716745787 31 0.0072519335716745787 35 0.0072519335716745787
		 38 0.0072519335716745787 41 0.0072519335716745787 45 0.0072519335716745787;
createNode animCurveTU -n "lever_scaleY";
	rename -uid "9B579CA2-456A-BA13-9DF9-D49FD6231AEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.028766571497524016 15 0.028766571497524016
		 16 0.028766571497524016 30 0.028766571497524016 31 0.028766571497524016 35 0.028766571497524016
		 38 0.028766571497524016 41 0.028766571497524016 45 0.028766571497524016;
createNode animCurveTU -n "lever_scaleZ";
	rename -uid "A98C391E-415D-D071-7DDD-4D8293307856";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0.0072519335716745787 15 0.0072519335716745787
		 16 0.0072519335716745787 30 0.0072519335716745787 31 0.0072519335716745787 35 0.0072519335716745787
		 38 0.0072519335716745787 41 0.0072519335716745787 45 0.0072519335716745787;
select -ne :time1;
	setAttr ".o" 45;
	setAttr ".unw" 45;
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
	setAttr -s 3 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace122.out" "powerConsoleShape.i";
connectAttr "polyBridgeEdge4.out" "leverBaseShape.i";
connectAttr "lever_rotateX.o" "lever.rx";
connectAttr "lever_rotateY.o" "lever.ry";
connectAttr "lever_rotateZ.o" "lever.rz";
connectAttr "lever_visibility.o" "lever.v";
connectAttr "lever_translateX.o" "lever.tx";
connectAttr "lever_translateY.o" "lever.ty";
connectAttr "lever_translateZ.o" "lever.tz";
connectAttr "lever_scaleX.o" "lever.sx";
connectAttr "lever_scaleY.o" "lever.sy";
connectAttr "lever_scaleZ.o" "lever.sz";
connectAttr "polyExtrudeFace131.out" "leverShape.i";
connectAttr "polySplitRing253.out" "polyExtrudeFace118.ip";
connectAttr "powerConsoleShape.wm" "polyExtrudeFace118.mp";
connectAttr "polyTweak162.out" "polySplitRing253.ip";
connectAttr "powerConsoleShape.wm" "polySplitRing253.mp";
connectAttr "polyCube10.out" "polyTweak162.ip";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak163.out" "polyExtrudeFace119.ip";
connectAttr "powerConsoleShape.wm" "polyExtrudeFace119.mp";
connectAttr "polyExtrudeFace118.out" "polyTweak163.ip";
connectAttr "polyTweak164.out" "polyExtrudeFace120.ip";
connectAttr "powerConsoleShape.wm" "polyExtrudeFace120.mp";
connectAttr "polyExtrudeFace119.out" "polyTweak164.ip";
connectAttr "polyExtrudeFace120.out" "polyExtrudeFace121.ip";
connectAttr "powerConsoleShape.wm" "polyExtrudeFace121.mp";
connectAttr "polyTweak165.out" "polyExtrudeFace122.ip";
connectAttr "powerConsoleShape.wm" "polyExtrudeFace122.mp";
connectAttr "polyExtrudeFace121.out" "polyTweak165.ip";
connectAttr "polyCylinder1.out" "polyExtrudeFace123.ip";
connectAttr "leverBaseShape.wm" "polyExtrudeFace123.mp";
connectAttr "polyTweak166.out" "polyExtrudeFace124.ip";
connectAttr "leverBaseShape.wm" "polyExtrudeFace124.mp";
connectAttr "polyExtrudeFace123.out" "polyTweak166.ip";
connectAttr "polyExtrudeFace124.out" "polyExtrudeFace125.ip";
connectAttr "leverBaseShape.wm" "polyExtrudeFace125.mp";
connectAttr "polyTweak167.out" "polyExtrudeFace126.ip";
connectAttr "leverBaseShape.wm" "polyExtrudeFace126.mp";
connectAttr "polyExtrudeFace125.out" "polyTweak167.ip";
connectAttr "polyExtrudeFace126.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "leverBaseShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "leverBaseShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "leverBaseShape.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polySplitRing254.ip";
connectAttr "leverBaseShape.wm" "polySplitRing254.mp";
connectAttr "polySplitRing254.out" "polySplitRing255.ip";
connectAttr "leverBaseShape.wm" "polySplitRing255.mp";
connectAttr "polySplitRing255.out" "polyExtrudeFace127.ip";
connectAttr "leverBaseShape.wm" "polyExtrudeFace127.mp";
connectAttr "polyExtrudeFace127.out" "polyTweak168.ip";
connectAttr "polyTweak168.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyBridgeEdge4.ip";
connectAttr "leverBaseShape.wm" "polyBridgeEdge4.mp";
connectAttr "polyTweak169.out" "polySplitRing256.ip";
connectAttr "leverShape.wm" "polySplitRing256.mp";
connectAttr "polyCylinder2.out" "polyTweak169.ip";
connectAttr "polySplitRing256.out" "polyExtrudeFace128.ip";
connectAttr "leverShape.wm" "polyExtrudeFace128.mp";
connectAttr "polyTweak170.out" "polyExtrudeFace129.ip";
connectAttr "leverShape.wm" "polyExtrudeFace129.mp";
connectAttr "polyExtrudeFace128.out" "polyTweak170.ip";
connectAttr "polyExtrudeFace129.out" "polySplitRing257.ip";
connectAttr "leverShape.wm" "polySplitRing257.mp";
connectAttr "polySplitRing257.out" "polySplitRing258.ip";
connectAttr "leverShape.wm" "polySplitRing258.mp";
connectAttr "polySplitRing258.out" "polyExtrudeFace130.ip";
connectAttr "leverShape.wm" "polyExtrudeFace130.mp";
connectAttr "polyTweak171.out" "polyExtrudeFace131.ip";
connectAttr "leverShape.wm" "polyExtrudeFace131.mp";
connectAttr "polyExtrudeFace130.out" "polyTweak171.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "powerConsoleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leverBaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leverShape.iog" ":initialShadingGroup.dsm" -na;
// End of powerConsole.ma
