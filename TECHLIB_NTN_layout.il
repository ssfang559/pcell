;;;this is a pcell for genereate mos
;;;all skill needed is in this script
;;;call the function and set the parameter can use



procedure(createMOS(  @key 
            (libName        "ssfang"        )             
            (model          "ptk"           )
            (lvsmodel       "ptk"           )   
            (wf             "2.0u"          )
            (l              "0.81u"         )
            (nf             1               )
            (limiter        t               )
            (PGExtAADefine  0.26            )

            (sourceContToPCSpace        0.12    )
            (drainContToPCSpace         0.12    )

            (leftAAEncPCValue           0.066   )
            (rightAAEncPCValue          0.066   )
            (AAEncSourcePCTopDefine     0.097   )
            (AAEncSourcePCBotDefine     0.097   )
            (AAEncDrainPCTopDefine      0.097   )
            (AAEncDrainPCBotDefine      0.097   )
            (AAEncPGtabByUser           0.0     )

            (sourceM0WidthDefine        0.24    )
            (drainM0WidthDefine         0.24    )
            (leftDummyPGNumberDefine    1       )
            (rightDummyPGNumberDefine   1       )
            (leftDummyPGToAASpaceDefine  0.061  )
            (rightDummyPGToAASpaceDefine 0.061  )
            (leftDummyPGLengthDefine     0.182  )
            (rightDummyPGLengthDefine    0.182  )
            (dummyPGSpaceDefine          nil    )
            (leftDummyPGSpaceUser        0.25   )
            (rightDummyPGSpaceUser       0.25   )
            
            (PSE                        nil     )
            (PSEDefine                  0.5     )

            (createLeftDummyMOS         nil     )
            (createRightDummyMOS        nil     )
            (createTopBottomDummyMOS    nil     )

            (leftDummyMOSNumber         5       )
            (rightDummyMOSNumber        5       )

            (createLLDummyMOS           t     )
            (createLRDummyMOS           t     )
            (createULDummyMOS           t     )
            (createURDummyMOS           t     )
            (createTopCenterDummyMOS    t     )
            (createBotCenterDummyMOS    t     )

            (dummyMOSGateLengthDefine   nil   )
            (dummyMOSGateLength         0.162   )
            (dummyMOSAAWidthDefine      nil   )
            (dummyMOSAAWidth            0.5   )
            (dummyMOSSpace              1.5     )


        )
    pcDefinePCell( list(ddGetObj(libName) lvsmodel "layout" "maskLayout")
        (
            (lay_model              string      model       )
            (lay_lvsmodel           string      lvsmodel    )
            (wf                     string      wf          )
            (l                      string      l           )
            (nf                     int         nf          )
            (PGExtAADefine          float       PGExtAADefine)
            (limiter                boolean     limiter     )
            (CORE_mode              boolean     nil         )
            (sourceContToPCSpace    float       sourceContToPCSpace )
            (drainContToPCSpace     float       drainContToPCSpace  )

            (leftAAEncPCValue       float       leftAAEncPCValue    )
            (rightAAEncPCValue      float       rightAAEncPCValue   )
            (AAEncSourcePCTopDefine float       AAEncSourcePCTopDefine  )
            (AAEncSourcePCBotDefine float       AAEncSourcePCBotDefine  )
            (AAEncDrainPCTopDefine  float       AAEncDrainPCTopDefine   )
            (AAEncDrainPCBotDefine  float       AAEncDrainPCBotDefine   )
            (AAEncPGtabByUser       float       AAEncPGtabByUser)

            (sourceM0WidthDefine    float       sourceM0WidthDefine )
            (drainM0WidthDefine     float       drainM0WidthDefine  )
            (enlargeM0ToAlignWithAA boolean     nil                   )

            (swapSD                 boolean     nil         )

            (removeTabUL            boolean     nil         )
            (removeTabUR            boolean     nil         )
            (removeTabLL            boolean     nil         )
            (removeTabLR            boolean     nil         )
            (removeAllTab           boolean     nil         )
            (removeAllPC            boolean     nil         )
            
            (removeAllDummyPG       boolean     nil         )
            (leftDummyPGNumberDefine        int         leftDummyPGNumberDefine     )
            (rightDummyPGNumberDefine       int         rightDummyPGNumberDefine    )
            (leftDummyPGToAASpaceDefine     float       leftDummyPGToAASpaceDefine  )
            (rightDummyPGToAASpaceDefine    float       rightDummyPGToAASpaceDefine )
            (leftDummyPGLengthDefine        float       leftDummyPGLengthDefine     )
            (rightDummyPGLengthDefine       float       rightDummyPGLengthDefine    )
            (dummyPGSpaceDefine             boolean     dummyPGSpaceDefine          )
            (leftDummyPGSpaceUser           float       leftDummyPGSpaceUser        )
            (rightDummyPGSpaceUser          float       rightDummyPGSpaceUser       )

            (removeLeftRightPCM0        boolean         nil         )

            (PSE                        boolean         PSE         )
            (PSEDefine                  float           PSEDefine   )
            (PSENotChangeAAWidth        boolean         nil         )
            (leftOnlySourceLDDRightOnlyDrainLDD boolean t         )
;;extra parameter for dummy MOS create
            (leftDummyMOSNumber         int         leftDummyMOSNumber  )
            (rightDummyMOSNumber        int         rightDummyMOSNumber )

            (createLeftDummyMOS         boolean     createLeftDummyMOS  ) 
            (createRightDummyMOS        boolean     createRightDummyMOS )
            (createTopBottomDummyMOS    boolean     createTopBottomDummyMOS)

            (createLLDummyMOS           boolean     createLLDummyMOS    )
            (createLRDummyMOS           boolean     createLRDummyMOS    )
            (createULDummyMOS           boolean     createULDummyMOS    )
            (createURDummyMOS           boolean     createURDummyMOS    )
            (createTopCenterDummyMOS    boolean     createTopCenterDummyMOS )
            (createBotCenterDummyMOS    boolean     createBotCenterDummyMOS )

            (dummyMOSGateLengthDefine   boolean     dummyMOSGateLengthDefine)
            (dummyMOSGateLength         float       dummyMOSGateLength  )
            (dummyMOSAAWidthDefine      boolean     dummyMOSAAWidthDefine)
            (dummyMOSAAWidth            float       dummyMOSAAWidth     )
            (dummyMOSSpace              float       dummyMOSSpace       )

            (createConnectPG            boolean     t                   )
            (removeTopBotPG             boolean    nil                  )
            (removeNW                   boolean    nil                  )
            (removeFirstDummyPG         boolean    nil                  )

        )
        let(( GRID ActiveLayer PGLayer PGTabLayer labelLayer minPGLength firstPGLength secondPGLength thirdPGLength PGLength minPGToPGSpace PGTabWidth PGTabOverlapAA noNeedTab PGExtAA PCLayer PC1Layer PC2Layer PCWidth PCMaxLength minPCToPGSpace SCGS DCGS PCToPCShortSideSpace PCToPGTabSpace1 PCToPGTabSpace2 PCToPGTabSpace3 PCToPGTabSpace4 AAEncPCLeft AAEncSourcePCTopMin AAEncDrainPCTopMin AAEncPCRight AAEncSourcePCBotMin AAEncDrainPCBotMin M0Layer sourceM0Width drainM0Width M0EncPCShortSide dummyPGLayer leftDummyPGLength leftDummyPGToAASpace leftDummyPGToDummyPGSpace rightDummyPGToAASpace rightDummyPGLength leftDummyPGNumber rightDummyPGNumber leftDummyPGExtAABot rightDummyPGExtAABot DNWEncAASide1 NWEncThinAASide1 NWEncThinAASide2 NWEncThickAASide1 NWEncThickAASide2 channelEncAASide1 channelEncGateSide1 channelEncGateSide2 SGDEncAASide1 SGDEncGateSide1 SGDEncGateSide2 DGXEncAASide1 DGXEncGateSide1 DGXEncGateSide2 KGXEncAASide1 KGXEncGateSide1 KGXEncGateSide2 NMREncAASide1 NMREncGateSide1 NMREncGateSide2 lddEncAASide1 lddEncGateSide1 lddEncGateSide2 plusEncAASide1 plusEncAASide2 asymmetryImp sourceLDDLayer drainLDDLayer ntn_implant ntn_dnw_implant ntn_hv_implant ntn_hv_dnw_implant ntn_lv_implant ntn_lv_dnw_implant ntn_lvio_implant ntk_implant ntk_dnw_implant ntk_hv_implant ntk_hv_dnw_implant ntk_hvs_implant ntk_lv_implant ntk_lv_dnw_implant ptn_implant ptn_hv_implant ptn_lv_implant ptn_lvio_implant ptk_implant ptk_lv_implant ptk_s_implant sourceLabelText drainLabelText temp leftDummyPGExtAATop rightDummyPGExtAATop firstPG AALength AAWidth AALeftPosX AARightPosX firstAA mergeSourcePGTab firstTabPoints firstTabGroup mergeDrainPGTab sourcePCToPGTabDy AAEncSourcePCTopActual AAEncSourcePCBotActual drainPCToPGTabDy AAEncDrainPCTopActual AAEncDrainPCBotActual sourcePCTotalLengthCanUse sourcePCNumber sourcePCLength sourcePCPosY drainPCTotalLengthCanUse drainPCNumber drainPCLength drainPCPosY sourcePCGroup firstPCLLX firstPCLLY firstPCURX firstPCURY PCDrawLayer drainPCGroup sourceM0BotX sourceM0BotY sourceM0TopY sourceM0Points firstSourceM0 drainM0BotX drainM0BotY drainM0TopY drainM0Points firstDrainM0 sourceLDDWidth drainLDDWidth sourceLDDURX sourceLDDURY sourceLDDLLX sourceLDDLLY firstSourceLDD drainLDDURX drainLDDURY drainLDDLLX drainLDDLLY firstDrainLDD gateLabel sourceLabel drainLabel sourceGroup drainGroup gateGroup gateDx sourceCopyNum drainCopyNum sourceObjList gateObjList drainDx drainObjList sourceDx PCBBoxX firstAALL firstAAURY AABBoxLLX AABBoxLLY AABBoxURX AABBoxURY leftDeleteBBox rightDeleteBBox removeLayerList removeObjList leftStretchBBoxLLX leftStretchBBoxLLY leftStretchBBoxURX leftStretchBBoxURY leftStretchDx leftStretchBBox sourceLDDObj drainLDDObj stretchLayerList stretchObjList rightStretchBBoxLLX rightStretchBBoxLLY rightStretchBBoxURX rightStretchBBoxURY rightstrechDx rightStretchBBox allTopPGTabObj allBotPGTabObj M0GrowBBox sourceTopPGTab sourceBotPGTab drainTopPGTab drainBotPGTab lddEnlargeLeft allAsymmetryLddObj allAsymmetryImplantLeftEdge minAsymmetryImlantLeftEdge leftCutActiveAsymmetryLDD leftCutActiveAsymmetryLDDLLPosX leftCutActiveAsymmetryLDDLLPosY leftCutActiveAsymmetryLDDUR lddEnlargeRight maxAsymmetryImlantLeftEdge rightCutActiveAsymmetryLDD rightCutActiveAsymmetryLDDLL rightCutActiveAsymmetryLDDURPosX rightCutActiveAsymmetryLDDURPosY leftDummyPGGroup leftDummyPGBotX leftDummyPGBotY leftDummyPGTopY rightDummyPGGroup rightDummyPGBotX rightDummyPGBotY rightDummyPGTopY PGBBox AABBox gateBBox symmetryImpList dummyMOSAALayer dummyMOSPGLayer dummyMOSHeight dummyMOSPGLength dummyMOSWidth dummyMOSPGTabWidth dummyMOSPGTabOverlapAA dummyMOSNoNeedTab leftDummyPGPosX rightDummyPGPosX dummyMOSPosLLX dummyMOSPosLLY dummyMOSPosURX dummyMOSPosURY leftDummyMOSAA dummyMOSPGPosBotX dummyMOSPGPosBotY dummyMOSPGPosTopY leftDummyMOSPG leftDummyMOSTabPoints leftDummyMOSTabGroup leftDummyMOSDummyPGPosBotX leftDummyMOSDummyPGPosBotY leftDummyMOSDummyPGPosTopY leftDummyMOSDummyPG leftDummyMOSGroup leftObjList leftDummyMOSDx llDummyMOSDy ulDummyMOSDy rightDummyMOSGroup rightDummyMOSAA rightDummyMOSPG rightDummyMOSDummyPG rightDummyMOSTabPoints rightDummyMOSTabGroup rightObjList rightDummyMOSDx lrDummyMOSDy urDummyMOSDy topDummyMOSPGList botDummyMOSPGList maxTopBotDummyAAWidth mainMOSAABBox mainMOSAATopEdge mainMOSAABotEdge allDummyMOSAABBox allDummyMOSAATopEdge allDummyMOSAABotEdge allDummyMOSBBox topDummyMOSSearchBBox topDummyAAObjList topDummyPGObjList topDummyPGTabObjList bottomDummyMOSSearchBBox bottomDummyAAObjList bottomDummyPGObjList bottomDummyPGTabObjList dummyMOSConnectPGWidth leftDummyMOSObjList leftDummyMOSObjBBox rightDummyMOSObjList rightDummyMOSObjBBox topDummyAAandPGQueryBBox botDummyAAandPGQueryBBox dummyMOSAABBox dummyMOSPGBBox dummyMOSGateBBox allAsymmetryImpList dummyMOSLddBBox LLPosX LLPosY URPosX URPosY cdfId componentName NWEncAASide1 NWEncAASide2 channelBBox lddBBox DGXBBox KGXBBox SGDBBox NMRBBox Xlist Ylist bBox bBoxX bBoxY returnList objList lowerLeft upperRight returnBox LLX LLY URX URY newURY newLLY newURX newLLX LLXlist LLYlist URXlist URYlist returnBBox result rsh r value shapeIds instIds mosaicIds viaIds viaInstIds pcCellViewbBox xyOrigin
        
            );; all parameters

            GRID = 0.001 ;;GRID is for precision of float value
            if(rexMatchp(".*n" wf) then  wf = atof(wf) * GRID else wf = atof(wf)  )
            if(rexMatchp(".*n" l)  then  l  = atof(l)  * GRID else l  = atof(l)   )
            ;;parameter set
            ;;0. base (
            if(rexMatchp("^nt.*" lay_model) then 
                ActiveLayer = list("AT4" "NCH")
                PGLayer     = list("PG"  "NCH")
                PGTabLayer  = list("PG"  "NTAP")
            else if(rexMatchp("^pt.*" lay_model) then
                ActiveLayer = list("AT4" "PCH")
                PGLayer     = list("PG"  "PCH")
                PGTabLayer  = list("PG"  "PTAP")
            
            ));if
            labelLayer = list("text" "drawing")
            ;;base )
            ;;----------------------------------------------------------
            ;;1. PG
            ;;1.1 PG length (
            minPGLength = 0.05
            firstPGLength = 0.162
            secondPGLength = 0.176
            thirdPGLength = 0.192
            cond(
                (member(lay_model list("ntn" "ptn" ))
                    minPGLength = firstPGLength
                )
            
                (member(lay_model list("ntn_hv" "ntn_lv" "ntn_lvio" "ptn_hv" "ptn_lv" "ptn_lvio"))
                    minPGLength = firstPGLength
                )

                (member(lay_model list("ntk" "ptk" "ptk_lv" "ptk_s"))
                    minPGLength = 0.479
                )

                (member(lay_model list("ntk_hv" "ntk_hvs" "ntk_lv"))
                    minPGLength = 0.586
                )

            );cond
            PGLength = l
            if(limiter && (l < minPGLength) then
                PGLength = minPGLength                
            );if
            ;;)1.1  PG length
    
            ;;1.2 PG Space
            minPGToPGSpace = 0.25
            
            ;;1.3 PG tab(
            PGTabWidth = 0.0        ;; initial value for later use, no need change
            PGTabOverlapAA = 0.0    ;; initial value for later use, no need change
            noNeedTab = nil

            ;; set PG tab width Overlap AA value
            cond(
                (member(lay_model list("ntn" "ntn_hv" "ntn_lv" "ntn_lvio" "ptn" "ptn_hv" "ptn_lv" "ptn_lvio"))
                    PGTabWidth = 0.039
                    PGTabOverlapAA = 0.061
                    when(PGLength >= 0.246
                        noNeedTab = t
                        PGTabWidth = PGTabOverlapAA = 0.0
                    )
                )
                (member(lay_model list("ntk" "ntk_hv" "ntk_hvs" "ntk_lv"))
                    PGTabWidth = 0.049
                    PGTabOverlapAA = 0.067
                    when(PGLength >= 0.483
                        noNeedTab = t
                        PGTabWidth = PGTabOverlapAA = 0.0
                    )
                )
                (member(lay_model list("ptk" "ptk_lv" "ptk_s"))
                    PGTabWidth = 0.098
                    PGTabOverlapAA = 0.067
                    when(PGLength >= 0.803
                        noNeedTab = t
                        PGTabWidth = PGTabOverlapAA = 0.0
                    )

                )

            );cond 

            ;;add a parameter AAEncPGtabByUser to control PGTabOverlapAA by user
            if(AAEncPGtabByUser!=0.0 
                then  PGTabOverlapAA = AAEncPGtabByUser);if 

            ;; remove PG Tab function not set in this pcell, can waive
            when(removeTabUL && removeTabUR && removeTabLL && removeTabLR && nf == 1
                noNeedTab = t
            )
                
            ;; 2023-02-23 add new function for remove all PG tab split
            when(removeAllTab
                noNeedTab = t
                PGTabWidth = PGTabOverlapAA = 0
            );when

            ;;1.4 PG ext AA
            ;PGExtAA = 0.26
            PGExtAA = PGExtAADefine
            ;;-----------------------------------------------------------------------
            ;;2. PC (

            PCLayer  = list("PC" "PCH")  ;; PC layer for finial copy PC1/PC2 to generate PC for lvs check
            PC1Layer = list("PC1" "PCH")
            PC2Layer = list("PC2" "PCH")

            ;;2.1 PC size
            PCWidth = !CORE_mode && 0.103 || 0.072
            PCMaxLength = 0.625
            ;;2.2 PC Space
            minPCToPGSpace = 0.133
            SCGS = DCGS = minPCToPGSpace
            cond(
                (PGLength <= firstPGLength
                    SCGS = DCGS = 0.147
                )
                (PGLength <= secondPGLength
                    SCGS = DCGS = 0.137
                )
                (PGLength <= thirdPGLength
                    SCGS = DCGS = 0.127
                )
                (PGLength > 19.53
                    SCGS = DCGS = 0.25
                )
            );cond
            
            when(member(lay_model list("ntk" "ntk_hv" "ntk_hvs" "ntk_lv")) && nf > 1 && !noNeedTab ;; ntk related mos, set SCGS/DCGS to waive DRC
                SCGS = DCGS = 0.123
            );when

            when(!limiter ;; when limiter == false ; then user can set user define value
                SCGS = sourceContToPCSpace
                DCGS = drainContToPCSpace
            );when
            
            PCToPCShortSideSpace = 0.24
            
            ;; PG tab cover PC four case have diffrent value
            PCToPGTabSpace1 = 0.120
            PCToPGTabSpace2 = 0.145
            PCToPGTabSpace3 = 0.150
            PCToPGTabSpace4 = 0.180
            when(CORE_mode  ;; CORE_mode no use in TEG, also can waive
                PCToPGTabSpace1 = 0.071
                PCToPGTabSpace2 = 0.105
                PCToPGTabSpace3 = 0.140
                PCToPGTabSpace4 = 0.170
            )

            ;;2.2 PC space
            ;;2.3 AAEncPC
            AAEncPCLeft = AAEncPCRight = 0.066
            AAEncSourcePCTopMin = AAEncSourcePCBotMin = 0.106  ;; min value is from design rule, actually AA enc PC value is calulated
            AAEncDrainPCTopMin  = AAEncDrainPCBotMin  = 0.106  ;; min value is from design rule, actually AA enc PC value is calulated
            when(!limiter ;; when limiter == false ; then user can set user define value
                AAEncPCLeft = leftAAEncPCValue
                AAEncPCRight = rightAAEncPCValue
                AAEncSourcePCTopMin = AAEncSourcePCTopDefine
                AAEncSourcePCBotMin = AAEncSourcePCBotDefine
                AAEncDrainPCTopMin = AAEncDrainPCTopDefine
                AAEncDrainPCBotMin = AAEncDrainPCBotDefine
            );when

        
            ;;-----------------------------------------------------------------------
            ;;3 metal define
            M0Layer = list("MT2" "drawing")
            sourceM0Width  = sourceM0WidthDefine
            drainM0Width = drainM0WidthDefine
            
            M0EncPCShortSide = 0.039

            ;enlargeM0ToAlignWithAA = t ;; when enlargeM0ToAlignWithAA set to false, metal Length use calculate value, else align with AA edge
            ;;-----------------------------------------------------------------------
            ;;4 dummy PG
            dummyPGLayer = list("PG" "DUMMY")

            cond(
                (PGLength <= firstPGLength
                    leftDummyPGLength = rightDummyPGLength = PGLength
                    leftDummyPGToAASpace = rightDummyPGToAASpace = 0.081
                    leftDummyPGToDummyPGSpace = rightDummyPGToDummyPGSpace = 0.378
                )            
                (PGLength <= secondPGLength
                    leftDummyPGLength = rightDummyPGLength = PGLength
                    leftDummyPGToAASpace = rightDummyPGToAASpace = 0.071
                    leftDummyPGToDummyPGSpace = rightDummyPGToDummyPGSpace = 0.358
                )            
                (PGLength <= thirdPGLength
                    leftDummyPGLength = rightDummyPGLength = PGLength
                    leftDummyPGToAASpace = rightDummyPGToAASpace = 0.061
                    leftDummyPGToDummyPGSpace = rightDummyPGToDummyPGSpace = 0.348
                )            
                (PGLength > thirdPGLength
                    leftDummyPGLength = rightDummyPGLength = secondPGLength
                    leftDummyPGToAASpace = rightDummyPGToAASpace = 0.061
                    leftDummyPGToDummyPGSpace = rightDummyPGToDummyPGSpace = 0.25
                )
            );cond
            ;;2023-02-23 add dummyPGSpaceDefine button
            when(dummyPGSpaceDefine
                leftDummyPGToDummyPGSpace = leftDummyPGSpaceUser
                rightDummyPGToDummyPGSpace = rightDummyPGSpaceUser
            );when

            when(!limiter
                leftDummyPGToAASpace = leftDummyPGToAASpaceDefine
                rightDummyPGToAASpace = rightDummyPGToAASpaceDefine

                leftDummyPGLength = leftDummyPGLengthDefine
                rightDummyPGLength = rightDummyPGLengthDefine
            );when

            leftDummyPGNumber = leftDummyPGNumberDefine
            rightDummyPGNumber = rightDummyPGNumberDefine
            
            ;; left/right PG dummy Ext AA
            leftDummyPGExtAABot = leftDummyPGExtAATop = PGExtAA   ;; set defult dummy PG ext AA value
            rightDummyPGExtAABot = rightDummyPGExtAATop = PGExtAA ;; set defult dummy PG ext AA value
            when(member(lay_model list("ptk" "ptk_lv" "ptk_s")) && !noNeedTab   ;; when ptk, ptk_lv, ptk_s dummy PG ext AA should cut some value
                cond(
                    (((SCGS + PCWidth + AAEncPCLeft + leftDummyPGToAASpace) > PGTabWidth) && ((SCGS + PCWidth + AAEncPCLeft + leftDummyPGToAASpace - PGTabWidth) < minPGToPGSpace)
                        leftDummyPGExtAABot = leftDummyPGExtAATop = -(PGTabOverlapAA + fixFolatToGridCeiling(sqrt(minPGToPGSpace**2 - (SCGS + PCWidth + AAEncPCLeft + leftDummyPGToAASpace - PGTabWidth)**2)))
                    )
                    ((SCGS + PCWidth + AAEncPCLeft + leftDummyPGToAASpace) <= PGTabWidth
                        leftDummyPGExtAABot = leftDummyPGExtAATop = -(PGTabOverlapAA + minPGToPGSpace)
                    )
                );cond
                when(removeTabLL && removeTabUL 
                    leftDummyPGExtAABot = leftDummyPGExtAATop = PGExtAA
                )

                cond(
                    (((DCGS + PCWidth + AAEncPCRight + rightDummyPGToAASpace) > PGTabWidth) && ((DCGS + PCWidth + AAEncPCRight + rightDummyPGToAASpace - PGTabWidth) < minPGToPGSpace)
                        rightDummyPGExtAABot = rightDummyPGExtAATop = -(PGTabOverlapAA + fixFolatToGridCeiling(sqrt(minPGToPGSpace**2 - (DCGS + PCWidth + AAEncPCRight + rightDummyPGToAASpace - PGTabWidth)**2)))
                    )
                    ((DCGS + PCWidth + AAEncPCRight + rightDummyPGToAASpace) <= PGTabWidth
                        rightDummyPGExtAABot = rightDummyPGExtAATop = -(PGTabOverlapAA + minPGToPGSpace)
                    )
                );cond
                when(removeTabLL && removeTabUL 
                    rightDummyPGExtAABot = rightDummyPGExtAATop = PGExtAA
                )
            );when
            ;;-----------------------------------------------------------------------
            ;;5 asymmetry implant define
            DNWEncAASide1 = DNWEncAASide2 = 3.27
            NWEncThinAASide1 = 1.15
            NWEncThinAASide2 = 1.61
            NWEncThickAASide1 = 1.25
            NWEncThickAASide2 = 1.61

            channelEncAASide1 = channelEncAASide2 = 0.38
            channelEncGateSide1 = 0.38
            channelEncGateSide2 = 0.799

            SGDEncAASide1 = SGDEncAASide2 = 0.470
            SGDEncGateSide1 = 0.470
            SGDEncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.2**2 - SGDEncGateSide1**2)) SGDEncGateSide1)

            DGXEncAASide1 = DGXEncAASide2 = 0.47
            DGXEncGateSide1 = 0.8
            DGXEncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.2**2 - DGXEncGateSide1**2)) DGXEncGateSide1)

            KGXEncAASide1 = KGXEncAASide2 = 0.47
            KGXEncGateSide1 = 0.8
            KGXEncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.2**2 - KGXEncGateSide1**2)) KGXEncGateSide1)

            NMREncAASide1 = NMREncAASide2 = 0.470
            NMREncGateSide1 = 0.470
            NMREncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.2**2 - NMREncGateSide1**2)) NMREncGateSide1)

            lddEncAASide1 = lddEncAASide2 = 0.60
            lddEncGateSide1 = 0.60
            lddEncGateSide2 = 1.078

            plusEncAASide1 = pcImpEncAASide1 = 0.30
            plusEncAASide2 = pcImpEncAASide2 = 0.42
            when(CORE_mode   ;; CORE_mode no use in TEG, so just waive
                DNWEncAASide1 = DNWEncAASide2 = 2.54
                NWEncThinAASide1 = 0.303
                NWEncThinAASide2 = 0.56
                NWEncThickAASide1 = 0.303
                NWEncThickAASide2 = 0.56

                channelEncAASide1 = channelEncAASide2 = 0.049
                channelEncGateSide1 = 0.26
                channelEncGateSide2 = 0.531

                SGDEncAASide1 = SGDEncAASide2 = 0.313
                SGDEncGateSide1 = 0.303
                SGDEncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.0**2 - SGDEncGateSide1**2)) SGDEncGateSide1)

                DGXEncAASide1 = DGXEncAASide2 = 0.47
                DGXEncGateSide1 = 0.8
                DGXEncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.2**2 - DGXEncGateSide1**2)) DGXEncGateSide1)

                NMREncAASide1 = NMREncAASide2 = 0.303
                NMREncGateSide1 = 0.303
                NMREncGateSide2 = max(fixFolatToGridCeiling(sqrt(1.0**2 - NMREncGateSide1**2)) NMREncGateSide1)

                lddEncAASide1 = lddEncAASide2 = 0.303
                lddEncGateSide1 = 0.352
                lddEncGateSide2 = 0.531

                plusEncAASide1 = pcImpEncAASide1 = 0.26
                plusEncAASide2 = pcImpEncAASide2 = 0.36
            )

            asymmetryImp = nil ;; initial value, no need change
            when(member(lay_model list("ntk" "ntk_hv"))
                asymmetryImp = t
                sourceLDDLayer = list("NL3" "drawing")
                drainLDDLayer  = list("NL3" "drain")
            )
            when(member(lay_model list("ptk"))
                asymmetryImp = t
                sourceLDDLayer = list("PL3" "drawing")
                drainLDDLayer  = list("PL3" "drain")
            )
            when(member(lay_model list("ptk_lv"))
                asymmetryImp = t
                sourceLDDLayer = list("PL1" "drawing")
                drainLDDLayer  = list("PL1" "drain")
            )

            ;; asymmetryImp not in the follow list, and it will be handled extrally
            ntn_implant         = list(      "NCH2" "DGX"       "NMR" "NL2" "NSD" "PCN") ;;chanel use 4 character; LDD use 3 character
            ntn_dnw_implant     = list("DNW" "NCH2" "DGX"       "NMR" "NL2" "NSD" "PCN") ;;
            ntn_hv_implant      = list(      "NCH1" "DGX"       "NMR" "NL2" "NSD" "PCN") ;;
            ntn_hv_dnw_implant  = list("DNW" "NCH1" "DGX"       "NMR" "NL2" "NSD" "PCN") ;;
            ntn_lv_implant      = list(      "NCH2" "DGX"       "NMR" "NL1" "NSD" "PCN") ;;
            ntn_lv_dnw_implant  = list("DNW" "NCH2" "DGX"       "NMR" "NL1" "NSD" "PCN") ;;
            ntn_lvio_implant    = list(             "DGX"       "NMR" "NL1" "NSD" "PCN") ;;
            ntk_implant         = list(                   "KGX" "NMR"       "NSD" "PCN") ;;
            ntk_dnw_implant     = list("DNW"              "KGX" "NMR"       "NSD" "PCN") ;;
            ntk_hv_implant      = list(      "NCH2"       "KGX" "NMR"       "NSD" "PCN") ;;
            ntk_hv_dnw_implant  = list("DNW" "NCH2"       "KGX" "NMR"       "NSD" "PCN") ;;
            ntk_hvs_implant     = list(      "NCH2"       "KGX" "NMR"       "NSD" "PCN") ;;
            ntk_lv_implant      = list(      "PCH1"       "KGX" "NMR" "NL3" "NSD" "PCN") ;;
            ntk_lv_dnw_implant  = list("DNW" "PCH1"       "KGX" "NMR" "NL3" "NSD" "PCN") ;;

            ptn_implant         = list("NW"         "DGX"       "SGD" "PL3" "PSD" "PCP") ;;chanel use 4 character; LDD use 3 character
            ptn_hv_implant      = list("NW"         "DGX"       "SGD" "PL1" "PSD" "PCP") ;;
            ptn_lv_implant      = list("NW"         "DGX"       "SGD" "PL1" "PSD" "PCP") ;;
            ptn_lvio_implant    = list("NW"         "DGX"       "SGD" "PL2" "PSD" "PCP") ;;
            ptk_implant         = list("NW"               "KGX"             "PSD" "PCP") ;;
            ptk_s_implant       = list("NW"               "KGX"             "PSD" "PCP") ;;
            ptk_lv_implant      = list("NW"               "KGX"             "PSD" "PCP") ;;


            ;;-----------------------------------------------------------------------
            ;;6. label define
            sourceLabelText = "S"
            drainLabelText = "D"
            ;;-----------------------------------------------------------------------

            ;;swap SD
            when(swapSD
                temp = SCGS
                SCGS = DCGS
                DCGS = temp
                
                temp = AAEncSourcePCTopMin
                AAEncSourcePCTopMin = AAEncDrainPCTopMin
                AAEncDrainPCTopMin = temp

                temp = AAEncSourcePCBotMin
                AAEncSourcePCBotMin = AAEncDrainPCBotMin
                AAEncDrainPCBotMin = temp

                temp = sourceM0Width
                sourceM0Width = drainM0Width
                drainM0Width = temp
                    
                temp = leftDummyPGExtAATop
                leftDummyPGExtAATop = rightDummyPGExtAATop
                rightDummyPGExtAATop = temp
            
                temp = leftDummyPGExtAABot
                leftDummyPGExtAABot = rightDummyPGExtAABot
                rightDummyPGExtAABot = temp

                temp = sourceLDDLayer
                sourceLDDLayer = drainLDDLayer
                drainLDDLayer = temp

                temp = sourceLabelText
                sourceLabelText = drainLabelText
                drainLabelText = temp

;                temp = mergeDrainPGTab
;                mergeDrainPGTab =  mergeSourcePGTab
;                mergeSourcePGTab = temp
            )

;;============ main pattern draw ==========================================================================
;;============ main pattern draw ==========================================================================

;;[1]first PG draw
            ;firstPG = dbCreateRect(
            ;    pcCellView
            ;    PGLayer
            ;    list(0:-PGExtAA PGLength:(wf + PGExtAA))
            ;)
            firstPG = dbCreatePath(
                pcCellView
                PGLayer
                list(PGLength/2: -PGExtAA PGLength/2:(wf+PGExtAA))
                PGLength
            )
;;[2] AA first draw
            AALength = AAEncPCLeft + PCWidth + SCGS + PGLength + DCGS + PCWidth + AAEncPCRight
            AAWidth = wf
            AALeftPosX = -(SCGS + PCWidth + AAEncPCLeft)
            AARightPosX = PGLength + DCGS + PCWidth + AAEncPCRight
            firstAA = dbCreateRect(
                pcCellView
                ActiveLayer
                list(AALeftPosX:0 AARightPosX:wf)
            )
            ;fprintf(stdout "in here\n") 
            
;;[3] PG Tab draw
            mergeSourcePGTab = mergeDrainPGTab = nil ;initial parameter 
            when(!noNeedTab
                firstTabPoints = dbPointArrayAndNot(
                    pcCellView
                    dbPointArrayAndNot(
                        pcCellView
                        list(expandBBox(grow(firstPG~>bBox "leftRight" PGTabWidth)))  ;; grow and expandBBox is user define funcions 
                        list(expandBBox(firstPG~>bBox))
                    );dbPointArrayAndNot

                    list(expandBBox(grow(firstAA~>bBox "topBottom" -PGTabOverlapAA)))
                );dbPointArrayAndNot
                
                firstTabGroup = dbCreateGroup( ;;create a group to put four PG tabs
                    pcCellView
                    "firstTabGroup"
                    list("set" "ordered")
                )

                foreach(points firstTabPoints   ;; add PG tab to PGtab group
                    dbAddObjectToGroup(
                        firstTabGroup
                        dbCreatePolygon(
                            pcCellView
                            PGTabLayer
                            points
                        );firstTab
                    );dbAddObjectToGroup
                )
                ;; if PG tab is space is < minPGToPGSpace , then need to merge PG tab  ;; add new condition, when PSE, do not merge tab
                when((if(PSE then PSEDefine - SCGS - PCWidth else SCGS) + SCGS + PCWidth - PGTabWidth*2 ) < minPGToPGSpace  
                    mergeSourcePGTab  = t
                )
                when((if(PSE then PSEDefine - DCGS - PCWidth else DCGS) + DCGS + PCWidth - PGTabWidth*2 ) < minPGToPGSpace 
                    mergeDrainPGTab  = t
                )
            );when noNeedTab   
;;[4] PC draw
    ;;[4.1] PC to PGTabDy calculate
            ;; Source   ;; four case PG tab cover PC case, and calculate PC to PG tab dy case by case; this value is for PC length and numbers use
            cond(
                (((SCGS - PGTabWidth) >= PCToPGTabSpace1 || noNeedTab) && !mergeSourcePGTab
                    sourcePCToPGTabDy = 0.0
                )
                ((SCGS - PGTabWidth) < PCToPGTabSpace1 && SCGS > PGTabWidth && !mergeSourcePGTab
                    sourcePCToPGTabDy = fixFolatToGridCeiling(sqrt(PCToPGTabSpace1**2 - (SCGS-PGTabWidth)**2))
                )
                (PGTabWidth >= SCGS && PGTabWidth < (PCWidth/2 + SCGS) && !mergeSourcePGTab
                    sourcePCToPGTabDy = PCToPGTabSpace2
                )
                (PGTabWidth >= (PCWidth/2 + SCGS) && PGTabWidth < SCGS + PCWidth && !mergeSourcePGTab
                    sourcePCToPGTabDy = PCToPGTabSpace3
                )
                (PGTabWidth >= PCWidth + SCGS ||  mergeSourcePGTab
                    sourcePCToPGTabDy = PCToPGTabSpace4
                )
            );cond
            AAEncSourcePCTopActual = max(AAEncSourcePCTopMin (sourcePCToPGTabDy + PGTabOverlapAA))   ;; actual AA enc PC in Top and Bottom
            AAEncSourcePCBotActual = max(AAEncSourcePCBotMin (sourcePCToPGTabDy + PGTabOverlapAA))   ;; actual AA enc PC in Top and Bottom  

            ;; Drain   ;; four case PG tab cover PC case, and calculate PC to PG tab dy case by case; this value is for PC length and numbers use
            cond(
                (((DCGS - PGTabWidth) >= PCToPGTabSpace1 || noNeedTab) && !mergeDrainPGTab
                    drainPCToPGTabDy = 0.0
                )
                ((DCGS - PGTabWidth) < PCToPGTabSpace1 && DCGS > PGTabWidth && !mergeDrainPGTab
                    drainPCToPGTabDy = fixFolatToGridCeiling(sqrt(PCToPGTabSpace1**2 - (DCGS-PGTabWidth)**2))
                )
                (PGTabWidth >= DCGS && PGTabWidth < (PCWidth/2 + DCGS) && !mergeDrainPGTab
                    drainPCToPGTabDy = PCToPGTabSpace2
                )
                (PGTabWidth >= (PCWidth/2 + DCGS) && PGTabWidth < DCGS + PCWidth && !mergeDrainPGTab
                    drainPCToPGTabDy = PCToPGTabSpace3
                )
                (PGTabWidth >= PCWidth + DCGS || mergeDrainPGTab
                    drainPCToPGTabDy = PCToPGTabSpace4
                )
            );cond
            AAEncDrainPCTopActual = max(AAEncDrainPCTopMin (drainPCToPGTabDy + PGTabOverlapAA))  ;; actual AA enc PC in Top and Bottom
            AAEncDrainPCBotActual = max(AAEncDrainPCBotMin (drainPCToPGTabDy + PGTabOverlapAA))  ;; actual AA enc PC in Top and Bottom


    ;;[4.2] PC number and length calculate
            sourcePCTotalLengthCanUse = wf - AAEncSourcePCBotActual - AAEncSourcePCTopActual
            sourcePCNumber = int((sourcePCTotalLengthCanUse + PCToPCShortSideSpace) / (PCMaxLength + PCToPCShortSideSpace)) + 1
            sourcePCLength = fixFolatToGridFloor((sourcePCTotalLengthCanUse - (sourcePCNumber-1)*PCToPCShortSideSpace) / sourcePCNumber)            ;;PC length
            sourcePCPosY =  fixFolatToGridFloor(AAEncSourcePCBotActual + (sourcePCTotalLengthCanUse - sourcePCNumber * sourcePCLength - (sourcePCNumber-1) * PCToPCShortSideSpace) / 2)   ;; lowerLeft PC posY for start point draw multi PC
            ;fprintf(stdout "sourcePCTotalLengthCanUse= %L \n" sourcePCTotalLengthCanUse)

            drainPCTotalLengthCanUse = wf - AAEncDrainPCBotActual - AAEncDrainPCTopActual
            drainPCNumber = int((drainPCTotalLengthCanUse + PCToPCShortSideSpace) / (PCMaxLength + PCToPCShortSideSpace)) + 1
            drainPCLength = fixFolatToGridFloor((drainPCTotalLengthCanUse - (drainPCNumber-1)*PCToPCShortSideSpace) / drainPCNumber)                ;;PC length
            drainPCPosY =  fixFolatToGridFloor(AAEncDrainPCBotActual + (drainPCTotalLengthCanUse - drainPCNumber * drainPCLength - (drainPCNumber-1) * PCToPCShortSideSpace) / 2)    ;; lowerLeft PC posY for start point draw multi PC
            
            ;;---source pc----------
            sourcePCGroup = dbCreateGroup(
                pcCellView
                "sourcePCGroup"
                list("set" "ordered")
            )

            for(i 0 sourcePCNumber-1            ;; draw multi PC and add them in to sourcePCGroup
                firstPCLLX = -(SCGS + PCWidth)
                firstPCLLY = sourcePCPosY + i * (sourcePCLength + PCToPCShortSideSpace)

                firstPCURX = -SCGS
                firstPCURY = sourcePCPosY + sourcePCLength  + i * (sourcePCLength + PCToPCShortSideSpace)                
                PCDrawLayer = evenp(i) && PC1Layer || PC2Layer

                dbAddObjectToGroup(
                    sourcePCGroup
                    dbCreateRect(
                        pcCellView
                        PCDrawLayer
                        list(firstPCLLX:firstPCLLY firstPCURX:firstPCURY)
                    );firstTab
                );dbAddObjectToGroup
            );for
            sourcePCURY = firstPCURY
            ;;drain PC
            drainPCGroup = dbCreateGroup(
                pcCellView
                "drainPCGroup"
                list("set" "ordered")
            )

            for(i 0 drainPCNumber-1         ;; draw multi PC and add them in to drainPCGroup
                firstPCLLX = DCGS + PGLength
                firstPCLLY = drainPCPosY + i * (drainPCLength + PCToPCShortSideSpace)

                firstPCURX = DCGS + PGLength + PCWidth
                firstPCURY = drainPCPosY + drainPCLength  + i * (drainPCLength + PCToPCShortSideSpace)                
                PCDrawLayer = evenp(i) && PC2Layer || PC1Layer

                dbAddObjectToGroup(
                    drainPCGroup
                    dbCreateRect(
                        pcCellView
                        PCDrawLayer
                        list(firstPCLLX:firstPCLLY firstPCURX:firstPCURY)
                    );firstTab
                );dbAddObjectToGroup
            );for
            drainPCURY = firstPCURY
;;[5] source/drain metal draw
            sourceM0BotX = sourceM0TopX = -(SCGS+PCWidth/2)
            sourceM0BotY = sourcePCPosY - M0EncPCShortSide
            sourceM0TopY = sourcePCURY + M0EncPCShortSide          ;;firstPCURY is PC upperRight Pos Y

            when(enlargeM0ToAlignWithAA
                sourceM0BotY = 0.0
                sourceM0TopY = wf
            )
            sourceM0Points = list(sourceM0BotX:sourceM0BotY sourceM0TopX:sourceM0TopY)
            firstSourceM0 = dbCreatePath(
                pcCellView
                M0Layer
                sourceM0Points
                sourceM0Width
            )
            
            drainM0BotX = drainM0TopX = PGLength + DCGS + PCWidth/2
            drainM0BotY = drainPCPosY - M0EncPCShortSide
            drainM0TopY = drainPCURY + M0EncPCShortSide

            when(enlargeM0ToAlignWithAA
                drainM0BotY = 0.0
                drainM0TopY = wf
            )
            drainM0Points = list(drainM0BotX:drainM0BotY drainM0TopX:drainM0TopY)
            firstDrainM0 = dbCreatePath(
                pcCellView
                M0Layer
                drainM0Points
                drainM0Width
            )
;;[6] asymmetry implant
            sourceLDDWidth = SCGS*2 + PCWidth + PGLength
            drainLDDWidth = DCGS*2 + PCWidth + PGLength
            when(asymmetryImp
                sourceLDDURX = PGLength/2
                sourceLDDURY = wf + max(lddEncGateSide1 lddEncAASide1)
                sourceLDDLLX = sourceLDDURX - sourceLDDWidth
                sourceLDDLLY = -max(lddEncGateSide1 lddEncAASide1)

                firstSourceLDD = dbCreateRect(
                    pcCellView
                    sourceLDDLayer
                    list(sourceLDDLLX:sourceLDDLLY sourceLDDURX:sourceLDDURY)
                )

                drainLDDURX = PGLength/2
                drainLDDURY = wf + max(lddEncGateSide1 lddEncAASide1)
                drainLDDLLX = drainLDDURX + drainLDDWidth
                drainLDDLLY = -max(lddEncGateSide1 lddEncAASide1)

                firstDrainLDD = dbCreateRect(
                    pcCellView
                    drainLDDLayer
                    list(drainLDDLLX:drainLDDLLY drainLDDURX:drainLDDURY)
                )
            
            );when
;;[7] draw label
            gateLabel = dbCreateLabel(
                pcCellView
                labelLayer
                centerBox(firstPG~>bBox)
                lay_lvsmodel
                "centerCenter"
                "R90"
                "roman"
                0.1
            )
            sourceLabel = dbCreateLabel(
                pcCellView
                labelLayer
                centerBox(firstSourceM0~>bBox)
                sourceLabelText
                "centerCenter"
                "R0"
                "roman"
                0.1
            )
            drainLabel = dbCreateLabel(
                pcCellView
                labelLayer
                centerBox(firstDrainM0~>bBox)
                drainLabelText
                "centerCenter"
                "R0"
                "roman"
                0.1
            )


;;[8] multifingure
            sourceGroup = dbCreateGroup(   ;; create sourceGroup for put all member in groups
                pcCellView
                "sourceGroup"
                list("set" "ordered")
            )
            dbAddObjectToGroup(
                sourceGroup
                sourcePCGroup
            )
            dbAddObjectToGroup(
                sourceGroup
                firstSourceM0
            )
            when(asymmetryImp
                dbAddObjectToGroup(
                    sourceGroup
                    firstSourceLDD
                )
            )
            dbAddObjectToGroup(
                sourceGroup
                sourceLabel
            )
            ;--create drain group
            drainGroup = dbCreateGroup(         ;; create drain group for put all member in groups
                pcCellView
                "drainGroup"
                list("set" "ordered")
            )
            dbAddObjectToGroup(
                drainGroup
                drainPCGroup
            )
            dbAddObjectToGroup(
                drainGroup
                firstDrainM0
            ) 
            when(asymmetryImp
                dbAddObjectToGroup(
                    drainGroup
                    firstDrainLDD
                )
            )
            dbAddObjectToGroup(
                drainGroup
                drainLabel
            )
            ;;--- create gate group
                
            gateGroup = dbCreateGroup(          ;; create  gate group for put all member in groups
                pcCellView
                "gateGroup"
                list("set" "ordered")
            )
            dbAddObjectToGroup(
                gateGroup
                firstPG
            )
            when(!noNeedTab
                dbAddObjectToGroup(
                    gateGroup
                    firstTabGroup
                )
            )
            dbAddObjectToGroup(
                gateGroup
                gateLabel
            )
                ;;;    copy  when multifingure ;;;;
            when(nf > 1
                gateDx = sourceDx = drainDx =  0 ;; initial value
                sourceCopyNum = int(nf/2)
                drainCopyNum = evenp(nf) && (sourceCopyNum - 1) || sourceCopyNum
                ;; if even(nf) then source number = nf/2; drain number = nf/2 -1
                ;; if odd(nf) then source = drain number = nf -1 
                sourceObjList = drainObjList = gateObjList = list()  ;; initial list for put all copy generate object
                for(i 1 nf-1            ;; copy gate group
                    gateDx = evenp(i) && (gateDx  + SCGS*2 + PCWidth + PGLength)  || (gateDx + DCGS*2 + PCWidth + PGLength)
                    gateObjList = nconc(gateObjList copyGroup(gateGroup pcCellView list(gateDx:0 "R0" 1) list()))
                )
                foreach(obj gateObjList          ;; add all copy generated object to gate group
                    dbAddObjectToGroup(
                        gateGroup
                        obj
                    )
                );foreach
                for(i 1 drainCopyNum        ;; copy drain group
                    drainDx = drainDx + (DCGS + PCWidth + PGLength + SCGS)*2
                    drainObjList = nconc(drainObjList copyGroup(drainGroup pcCellView list(drainDx:0 "R0" 1) list()))
                )
                foreach(obj drainObjList
                    dbAddObjectToGroup(
                        drainGroup
                        obj
                    )
                );foreach
                for(i 1 sourceCopyNum       ;; copy source group
                    sourceDx = sourceDx + (DCGS + PCWidth + PGLength + SCGS)*2
                    sourceObjList = nconc(sourceObjList copyGroup(sourceGroup pcCellView list(sourceDx:0 "R0" 1) list()))
                )
                foreach(obj sourceObjList
                    dbAddObjectToGroup(
                        sourceGroup
                        obj
                    )
                );foreach

                ;;stretch AA right edge to match multifingure
                PCBBoxX = xCoord(upperRight(getBBoxFromLayer(pcCellView PC1Layer PC2Layer)))
                firstAALL = lowerLeft(firstAA~>bBox)                
                firstAAURY = yCoord(upperRight(firstAA~>bBox))
                firstAA~>bBox = list(firstAALL (PCBBoxX+AAEncPCRight):firstAAURY )
    
    ;;[7.x] add new button to delete left most PC and M0
                when(removeLeftRightPCM0
                    AABBoxLLX = xCoord(lowerLeft(firstAA~>bBox))
                    AABBoxLLY = yCoord(lowerLeft(firstAA~>bBox))

                    AABBoxURX = xCoord(upperRight(firstAA~>bBox))
                    AABBoxURY = yCoord(upperRight(firstAA~>bBox))
                    
                    leftDeleteBBox  = list(AABBoxLLX : AABBoxLLY (AABBoxLLX + AAEncPCLeft + PCWidth) : AABBoxURY)
                    ;; remove right PC/M0
                    rightDeleteBBox  = list(AABBoxURX - AAEncPCRight - PCWidth : AABBoxLLY AABBoxURX : AABBoxURY)

                    removeLayerList = list(list("PC1" "PCH") list("PC2" "PCH") list("MT2" "drawing") list("text" "drawing") )
                    removeObjList = nil
                    foreach(removeLayer removeLayerList
                        removeObjList = nconc(removeObjList dbShapeQuery(pcCellView removeLayer leftDeleteBBox 0))
                        removeObjList = nconc(removeObjList dbShapeQuery(pcCellView removeLayer rightDeleteBBox 0))
                    );foreach
                    foreach(obj removeObjList
                        dbDeleteObject(obj)
                    );foreach

                );when

    ;;[7.x] insert a new function for OSEX test; button to control the dummy Gate to main Gate Space;
                when(PSE
                    AABBoxLLX = xCoord(lowerLeft(firstAA~>bBox))
                    AABBoxLLY = yCoord(lowerLeft(firstAA~>bBox))
    
                    AABBoxURX = xCoord(upperRight(firstAA~>bBox))
                    AABBoxURY = yCoord(upperRight(firstAA~>bBox))
    
                ;;left stretch
                    leftStretchBBoxLLX = AABBoxLLX
                    leftStretchBBoxLLY = AABBoxLLY
                    leftStretchBBoxURX = AABBoxLLX  + AAEncPCLeft + PCWidth + SCGS + PGLength + 0.01
                    leftStretchBBoxURY = AABBoxURY
                    leftStretchDx = PSEDefine - PCWidth - DCGS*2
                    
                    leftStretchBBox = list(leftStretchBBoxLLX:leftStretchBBoxLLY leftStretchBBoxURX:leftStretchBBoxURY) 
                    ;; stretch asymmetryImp
                    when(asymmetryImp
                        sourceLDDObj = car(dbShapeQuery(pcCellView sourceLDDLayer leftStretchBBox))
                        sourceLDDObj~>bBox = list(lowerLeft(sourceLDDObj~>bBox) rightEdge(sourceLDDObj)-leftStretchDx:topEdge(sourceLDDObj))

                        drainLDDObj = car(dbShapeQuery(pcCellView drainLDDLayer leftStretchBBox))
                        drainLDDObj~>bBox = list(leftEdge(drainLDDObj)-leftStretchDx:bottomEdge(drainLDDObj) upperRight(drainLDDObj~>bBox ))
                    );when

                    ;; stretch PG/AA
                    stretchLayerList = list(list("PG" "NCH") list("PG" "NTAP") list("PG" "PCH") list("PG" "PTAP") list("PC1" "PCH") list("PC2" "PCH") list("MT2" "drawing") list("text" "drawing"))
                    stretchObjList = nil
                    foreach(stretchLayer stretchLayerList
                        stretchObjList = nconc(stretchObjList dbShapeQuery(pcCellView stretchLayer leftStretchBBox 0))
                    );foreach
                    foreach(stretchObj stretchObjList
                        dbMoveFig(stretchObj pcCellView list(-leftStretchDx :0 "R0"))
                    );foreach
                ;;right stretch
                    rightStretchBBoxLLX = AABBoxURX - AAEncPCRight - PCWidth - DCGS - PGLength - 0.01
                    rightStretchBBoxLLY = AABBoxLLY
                    rightStretchBBoxURX = AABBoxURX 
                    rightStretchBBoxURY = AABBoxURY
                    rightstrechDx = PSEDefine - PCWidth - SCGS*2
                    rightStretchBBox =  list(rightStretchBBoxLLX:rightStretchBBoxLLY rightStretchBBoxURX:rightStretchBBoxURY) 

                    when(asymmetryImp
                        drainLDDObj = car(dbShapeQuery(pcCellView drainLDDLayer rightStretchBBox))
                        drainLDDObj~>bBox = list(leftEdge(drainLDDObj) +rightstrechDx: bottomEdge(drainLDDObj) upperRight(drainLDDObj~>bBox))

                        sourceLDDObj = car(dbShapeQuery(pcCellView sourceLDDLayer rightStretchBBox))
                        sourceLDDObj~>bBox = list(lowerLeft(sourceLDDObj~>bBox) rightEdge(sourceLDDObj)+ rightstrechDx:topEdge(sourceLDDObj))
                    );when 

                    stretchObjList = nil
                    foreach(stretchLayer stretchLayerList
                        stretchObjList = nconc(stretchObjList dbShapeQuery(pcCellView stretchLayer rightStretchBBox 0))
                    );foreach
                    foreach(stretchObj stretchObjList
                        dbMoveFig(stretchObj pcCellView list(rightstrechDx :0 "R0"))
                    );foreach

                    when(!PSENotChangeAAWidth
                        firstAA~>bBox = list(AABBoxLLX-leftStretchDx:AABBoxLLY AABBoxURX + rightstrechDx:AABBoxURY)
                    );when
                );when PSE

                ;; merge ptk/ptk_lv/ptk_s PG tab
                when(mergeSourcePGTab   ;; source and source separated to merge 
                    allTopPGTabObj = setof(obj pcCellView~>shapes obj~>lpp == PGTabLayer && (topEdge(obj) > topEdge(firstAA)))
                    allBotPGTabObj = setof(obj pcCellView~>shapes obj~>lpp == PGTabLayer && (bottomEdge(obj) < bottomEdge(firstAA)))

                    foreach(sourceM0 setof(obj (swapSD&& drainGroup || sourceGroup)~>objects (obj~>objType == "path" && obj~>lpp == M0Layer))  ;; find all source M0, then use M0 as reference to merge PG tab
                        ;1. find source M0 and grow to a bBox
                        M0GrowBBox = grow(
                            grow(sourceM0~>bBox "leftRight" ((swapSD && DCGS || SCGS)*2 + PCWidth + PGLength - sourceM0Width)/2)
                            "topBottom" 
                            1.0
                        );grow
                        ;2. find PGTab inside that bBox
                        ;sourceTopPGTab  = setof(obj allTopPGTabObj leftEdge(obj) > xCoord(lowerLeft(M0GrowBBox)) &&  rightEdge(obj) < xCoord(upperRight(M0GrowBBox)))
                        sourceTopPGTab  = foreach(mapcar tabObj dbShapeQuery(pcCellView PGTabLayer M0GrowBBox)
                                            member(tabObj allTopPGTabObj) && tabObj
                                          )
                        sourceTopPGTab = remd(nil sourceTopPGTab)
                        
                        ;sourceBotPGTab  = setof(obj allBotPGTabObj leftEdge(obj) > xCoord(lowerLeft(M0GrowBBox)) &&  rightEdge(obj) < xCoord(upperRight(M0GrowBBox)))
                        sourceBotPGTab  = foreach(mapcar tabObj dbShapeQuery(pcCellView PGTabLayer M0GrowBBox)
                                            member(tabObj allBotPGTabObj) && tabObj
                                          )
                        sourceBotPGTab = remd(nil sourceBotPGTab)
                        
                        ;3. merge PGTab
                        dbAddObjectToGroup(
                            gateGroup
                            dbCreateRect(
                                pcCellView
                                PGTabLayer
                                getBBoxFromObjList(sourceTopPGTab)
                            )
                        )

                        dbAddObjectToGroup(
                            gateGroup
                            dbCreateRect(
                                pcCellView
                                PGTabLayer
                                getBBoxFromObjList(sourceBotPGTab)
                            )
                        );dbAddObjectToGroup
                    );foreach source PG tab merge


                );when mergeSourcePGTab

                when(mergeDrainPGTab        ;; source and drain separated to merge

                    allTopPGTabObj = setof(obj pcCellView~>shapes obj~>lpp == PGTabLayer && (topEdge(obj) > topEdge(firstAA)))
                    allBotPGTabObj = setof(obj pcCellView~>shapes obj~>lpp == PGTabLayer && (bottomEdge(obj) < bottomEdge(firstAA)))

                    foreach(drainM0 setof(obj (swapSD&& sourceGroup || drainGroup)~>objects (obj~>objType == "path" && obj~>lpp == M0Layer))
                        ;1. find drain M0 and grow to a bBox
                        M0GrowBBox = grow(
                            grow(drainM0~>bBox "leftRight" ((swapSD && SCGS || DCGS)*2 + PCWidth + PGLength - drainM0Width)/2)
                            "topBottom" 
                            1.0
                        );grow

                        ;2. find PGTab inside that bBox
                        ;drainTopPGTab  = setof(obj allTopPGTabObj leftEdge(obj) > xCoord(lowerLeft(M0GrowBBox)) &&  rightEdge(obj) < xCoord(upperRight(M0GrowBBox)))
                        drainTopPGTab  = foreach(mapcar tabObj dbShapeQuery(pcCellView PGTabLayer M0GrowBBox)
                                            member(tabObj allTopPGTabObj) && tabObj
                                          )
                        drainTopPGTab = remd(nil drainTopPGTab)
                        ;drainBotPGTab  = setof(obj allBotPGTabObj leftEdge(obj) > xCoord(lowerLeft(M0GrowBBox)) &&  rightEdge(obj) < xCoord(upperRight(M0GrowBBox)))
                        drainBotPGTab  = foreach(mapcar tabObj dbShapeQuery(pcCellView PGTabLayer M0GrowBBox)
                                            member(tabObj allBotPGTabObj) && tabObj
                                          )
                        drainBotPGTab = remd(nil drainBotPGTab)

                        ;3. merge PGTab
                        dbAddObjectToGroup(
                            gateGroup
                            dbCreateRect(
                                pcCellView
                                PGTabLayer
                                getBBoxFromObjList(drainTopPGTab)
                            )
                        )
                        dbAddObjectToGroup(
                            gateGroup
                            dbCreateRect(
                                pcCellView
                                PGTabLayer
                                getBBoxFromObjList(drainBotPGTab)
                            )
                        );dbAddObjectToGroup

                    );foreach drain PGTab merge
                );when mergeDrainPGTab
            );when nf > 1
;;[9] stetch asymmetryImp to match DRC enclosure
            when(asymmetryImp  ;; == t
                lddEnlargeLeft = max(lddEncAASide2 (lddEncGateSide2 - AAEncPCLeft - PCWidth - SCGS))
                allAsymmetryLddObj = setof(shape pcCellView~>shapes (shape~>lpp == sourceLDDLayer || shape~>lpp ==  drainLDDLayer))
            ;;a. stretch left
                allAsymmetryImplantLeftEdge = sort(foreach(mapcar asymmetryObj allAsymmetryLddObj leftEdge(asymmetryObj)) 'lessp)
                minAsymmetryImlantLeftEdge = car(allAsymmetryImplantLeftEdge)
                leftCutActiveAsymmetryLDD = car(setof(obj allAsymmetryLddObj leftEdge(obj) == minAsymmetryImlantLeftEdge))  ;; find the leftmost asymmetryImp 
                ;fprintf(stdout " -->left asymmetryImp is %L\n" leftCutActiveAsymmetryLDD~>bBox)

                leftCutActiveAsymmetryLDDLLPosX = xCoord(lowerLeft(growEdge(firstAA~>bBox "left" lddEnlargeLeft)))
                leftCutActiveAsymmetryLDDLLPosY = yCoord(lowerLeft(leftCutActiveAsymmetryLDD~>bBox))
                leftCutActiveAsymmetryLDDUR = upperRight(leftCutActiveAsymmetryLDD~>bBox)
                leftCutActiveAsymmetryLDD~>bBox = list(leftCutActiveAsymmetryLDDLLPosX:leftCutActiveAsymmetryLDDLLPosY leftCutActiveAsymmetryLDDUR)
            ;;b. stretch right
                lddEnlargeRight = evenp(nf)&&lddEnlargeLeft || max(lddEncAASide2 (lddEncGateSide2 - AAEncPCRight - PCWidth - DCGS))     ;; right need enlarge value
                maxAsymmetryImlantLeftEdge = car(last(allAsymmetryImplantLeftEdge))
                rightCutActiveAsymmetryLDD = car(setof(obj allAsymmetryLddObj  leftEdge(obj) == maxAsymmetryImlantLeftEdge))     ;; find the rightmost asymmetryImp
                ;fprintf(stdout " -->right asymmetryImp is %L\n" rightCutActiveAsymmetryLDD~>bBox)

                rightCutActiveAsymmetryLDDLL = lowerLeft(rightCutActiveAsymmetryLDD~>bBox)
                rightCutActiveAsymmetryLDDURPosX = xCoord(upperRight(growEdge(firstAA~>bBox "right" lddEnlargeRight)))
                rightCutActiveAsymmetryLDDURPosY = yCoord(upperRight(rightCutActiveAsymmetryLDD~>bBox))
                rightCutActiveAsymmetryLDD~>bBox = list(rightCutActiveAsymmetryLDDLL rightCutActiveAsymmetryLDDURPosX:rightCutActiveAsymmetryLDDURPosY)
                
            );when asymmetryImp
            
        ;;2023-2-23, add new funcion to swap left/right asymmtry 
        when(leftOnlySourceLDDRightOnlyDrainLDD 
            foreach(obj setof(shape pcCellView~>shapes shape~>lpp == sourceLDDLayer || shape~>lpp == drainLDDLayer)
                if(leftEdge(obj) <  ((xCoord(lowerLeft(pcCellView~>bBox)) +  xCoord(upperRight(pcCellView~>bBox)))/2 - PGLength/2) then
                    obj~>lpp = drainLDDLayer
                else
                    obj~>lpp = sourceLDDLayer
                );if
            );foreach
        );when


;;[10] dummy PG drawing

        ;; left dummy PG
            leftDummyPGGroup = dbCreateGroup(  ;;left dummy PG group 
                pcCellView
                "leftDummyPGGroup"
                list("set" "ordered")
            )
            for(i 0 leftDummyPGNumber-1
                leftDummyPGBotX = leftDummyPGTopX = leftEdge(firstAA) - (leftDummyPGToAASpace + leftDummyPGLength/2) - i * (leftDummyPGLength+leftDummyPGToDummyPGSpace)

                leftDummyPGBotY = 0 - leftDummyPGExtAABot 
                leftDummyPGTopY = wf + leftDummyPGExtAATop

                dbAddObjectToGroup(
                    leftDummyPGGroup
                    dbCreatePath(
                        pcCellView
                        dummyPGLayer
                        list(leftDummyPGBotX:leftDummyPGBotY leftDummyPGTopX:leftDummyPGTopY)
                        leftDummyPGLength
                    )
                );dbAddObjectToGroup
                
            );for

        ;; right dummy PG
            rightDummyPGGroup = dbCreateGroup(      ;;right dummy PG group
                pcCellView
                "rightDummyPGGroup"
                list("set" "ordered")
            )
            for(i 0 rightDummyPGNumber-1
                rightDummyPGBotX = rightDummyPGTopX = rightEdge(firstAA) + (rightDummyPGToAASpace + rightDummyPGLength/2) + i * (rightDummyPGLength+rightDummyPGToDummyPGSpace)

                rightDummyPGBotY = 0 - rightDummyPGExtAABot 
                rightDummyPGTopY = wf + rightDummyPGExtAATop

                dbAddObjectToGroup(
                    rightDummyPGGroup
                    dbCreatePath(
                        pcCellView
                        dummyPGLayer
                        list(rightDummyPGBotX:rightDummyPGBotY rightDummyPGTopX:rightDummyPGTopY)
                        rightDummyPGLength
                    )
                );dbAddObjectToGroup
                
            );for
;;[11 symmetry implant draw
            PGBBox = getBBoxFromLayer(pcCellView PGLayer)
            AABBox = firstAA~>bBox
            gateBBox = pointsToBBox(car(
                dbPointArrayAnd(
                    pcCellView
                    list(expandBBox(PGBBox))
                    list(expandBBox(AABBox))
            )))
            
            symmetryImpList = evalstring(strcat(lay_model "_implant"))

            createSymmetryImp(pcCellView symmetryImpList AABBox gateBBox) ;;use a function to maintain main mos and dummy mos implant create
;;[12]. copy PC1/PC2 to PC for lvs
            foreach(obj pcCellView~>shapes
                if(obj~>lpp == PC1Layer || obj~>lpp == PC2Layer then
                    dbCopyShape(obj pcCellView list(0:0 "R0" 1))~>lpp = PCLayer
                );if
            );foreach
            
            when(removeAllPC
                foreach(obj pcCellView~>shapes
                    if(obj~>lpp == PC1Layer || obj~>lpp == PC2Layer || obj~>lpp == PCLayer || obj~>lpp == M0Layer then 
                        dbDeleteObject(obj)
                    );if
                );foreach 
            );when
;;<><><><><><><><><><><><><><><><><> draw main mos end line <><><><><><><><><><><><><><>

;;~~~~~~~~~~~~~~ dummy MOS line ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;~~~~~~~~~~~~~~ dummy MOS line ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;<1> constaint define
            when(createLeftDummyMOS || createRightDummyMOS || createTopBottomDummyMOS
                dummyMOSAALayer = list("AT4" "DUMMY2")
                dummyMOSPGLayer = PGLayer
                
                dummyMOSHeight = wf 
                dummyMOSPGLength = dummyMOSGateLengthDefine && dummyMOSGateLength || PGLength
                dummyMOSWidth = dummyMOSAAWidthDefine && dummyMOSAAWidth || (AAEncPCRight + PCWidth + DCGS + dummyMOSPGLength + SCGS + PCWidth + AAEncPCLeft)

                dummyMOSPGTabWidth = PGTabWidth
                dummyMOSPGTabOverlapAA = PGTabOverlapAA
                dummyMOSNoNeedTab = nil
                ;; when user define dummy mos PG length, then need to think about no need tab case, with following
                cond(
                    (member(lay_model list("ntn" "ntn_hv" "ntn_lv" "ntn_lvio" "ptn" "ptn_hv" "ptn_lv" "ptn_lvio"))
                        if(dummyMOSGateLengthDefine && (dummyMOSPGLength >= 0.205) then
                            dummyMOSNoNeedTab = t
                        else
                            dummyMOSNoNeedTab = noNeedTab
                        );if
                    );member
                    (member(lay_model list("ntk" "ntk_hv" "ntk_hvs" "ntk_lv"))
                        if(dummyMOSGateLengthDefine && (dummyMOSPGLength >= 0.589) then
                            dummyMOSNoNeedTab = t
                        else
                            dummyMOSNoNeedTab = noNeedTab
                        );if
                    )
                    (member(lay_model list("ptk" "ptk_lv" "ptk_s"))
                        if(dummyMOSGateLengthDefine && (dummyMOSPGLength >= 0.81) then
                            dummyMOSNoNeedTab = t
                        else
                            dummyMOSNoNeedTab = noNeedTab
                        );if
                    );member
                );cond


;;<2> create a dummy mos simple and put it in a group
                ;; left dummy MOS simple

                leftDummyPGPosX  =  xCoord(lowerLeft(getBBoxFromLayer(pcCellView dummyPGLayer)))
                rightDummyPGPosX =  xCoord(upperRight(getBBoxFromLayer(pcCellView dummyPGLayer)))
                
                dummyMOSPosLLX = leftDummyPGPosX - rightDummyPGToAASpace - dummyMOSWidth
                dummyMOSPosLLY = bottomEdge(firstAA)
                dummyMOSPosURX = dummyMOSPosLLX + dummyMOSWidth
                dummyMOSPosURY = topEdge(firstAA)

                leftDummyMOSAA = dbCreateRect(  ;; first left dummy MOS
                    pcCellView
                    dummyMOSAALayer
                    list(dummyMOSPosLLX:dummyMOSPosLLY dummyMOSPosURX:dummyMOSPosURY)
                );dbCreateRect
                
                dummyMOSPGPosBotX = dummyMOSPGPosTopX =  xCoord(centerBox(leftDummyMOSAA~>bBox))
                dummyMOSPGPosBotY = yCoord(lowerLeft(firstPG~>bBox))
                dummyMOSPGPosTopY = yCoord(upperRight(firstPG~>bBox))

                leftDummyMOSPG = dbCreatePath(
                    pcCellView
                    dummyMOSPGLayer 
                    list(dummyMOSPGPosBotX:dummyMOSPGPosBotY dummyMOSPGPosTopX:dummyMOSPGPosTopY)
                    dummyMOSPGLength      
                );dbCreatePath
                ;; dummyMOS PGtab
                when(!dummyMOSNoNeedTab     ;;create dummy MOS pgtab
                    leftDummyMOSTabPoints = dbPointArrayAndNot(
                        pcCellView
                        dbPointArrayAndNot(
                            pcCellView
                            list(expandBBox(grow(leftDummyMOSPG~>bBox "leftRight" dummyMOSPGTabWidth)))
                            list(expandBBox(leftDummyMOSPG~>bBox))
                        );dbPointArrayAndNot

                        list(expandBBox(grow(leftDummyMOSAA~>bBox "topBottom" -dummyMOSPGTabOverlapAA)))
                    );dbPointArrayAndNot
                
                    leftDummyMOSTabGroup = dbCreateGroup(
                        pcCellView
                        "leftDummyMOSTabGroup"
                        list("set" "ordered")
                    )

                    foreach(points leftDummyMOSTabPoints
                        dbAddObjectToGroup(
                            leftDummyMOSTabGroup
                            dbCreatePolygon(
                                pcCellView
                                PGTabLayer
                                points
                            );firstTab
                        );dbAddObjectToGroup
                    );foreach

                );when !dummyMOSNoNeedTab

                leftDummyMOSDummyPGPosBotX = leftDummyMOSDummyPGPosTopX =  leftEdge(leftDummyMOSAA) - leftDummyPGToAASpace - leftDummyPGLength/2
                leftDummyMOSDummyPGPosBotY = leftDummyPGBotY
                leftDummyMOSDummyPGPosTopY = leftDummyPGTopY
                ;; left dummy PG create
                leftDummyMOSDummyPG = dbCreatePath(
                    pcCellView
                    dummyPGLayer
                    list(leftDummyMOSDummyPGPosBotX:leftDummyMOSDummyPGPosBotY leftDummyMOSDummyPGPosTopX:leftDummyMOSDummyPGPosTopY)
                    leftDummyPGLength
                );dbCreatePath
                ;; create a group for copy
                leftDummyMOSGroup = dbCreateGroup(
                    pcCellView
                    "leftDummyMOSGroup"
                    list("set" "ordered")
                )
                dbAddObjectToGroup(
                    leftDummyMOSGroup
                    leftDummyMOSAA
                )
                dbAddObjectToGroup(
                    leftDummyMOSGroup
                    leftDummyMOSPG
                )
                dbAddObjectToGroup(
                    leftDummyMOSGroup
                    leftDummyMOSDummyPG
                )
                when(!dummyMOSNoNeedTab
                    dbAddObjectToGroup(
                        leftDummyMOSGroup
                        leftDummyMOSTabGroup
                    )
                );when !dummyMOSNoNeedTab

                ;;  all left dummyMOS group
;;;<3> create left dummy MOS
                when(createLeftDummyMOS

                    leftObjList = list()
                    leftDummyMOSDx = 0
                    
                    for(i 1 leftDummyMOSNumber-1        ;; copy left dummy mos group to generate other dummy mos
                        leftDummyMOSDx = leftDummyMOSDx - dummyMOSWidth - leftDummyPGToAASpace - leftDummyPGLength - rightDummyPGToAASpace
                        leftObjList = nconc(leftObjList copyGroup(leftDummyMOSGroup pcCellView list(leftDummyMOSDx:0 "R0" 1) list()))

                    );for    
                    foreach(obj leftObjList
                        dbAddObjectToGroup(
                            leftDummyMOSGroup
                            obj
                        )
                    );foreach
                
                    when(createLLDummyMOS
                        llDummyMOSDy = 0
                        for(i 1 1 ;; only one row in top
                            llDummyMOSDy = llDummyMOSDy - dummyMOSHeight - dummyMOSSpace
                            copyGroup(leftDummyMOSGroup pcCellView list(0:llDummyMOSDy "R0" 1) list())
                        );for
                    );when createLLDummyMOS
                    when(createULDummyMOS
                        ulDummyMOSDy = 0
                        for(i 1 1 ;; only one row in top
                            ulDummyMOSDy = ulDummyMOSDy + dummyMOSHeight + dummyMOSSpace
                            copyGroup(leftDummyMOSGroup pcCellView list(0:ulDummyMOSDy "R0" 1) list())
                        );for
                    );when createLLDummyMOS

                );when createLeftDummyMOS
;;<4> create right dummy MOS
                when(createRightDummyMOS
                    
                    ;;1. create right dummy mos
                    rightDummyMOSGroup = dbCreateGroup(
                        pcCellView
                        "rightDummyMOSGroup"
                        list("set" "ordered")
                    )
                    rightDummyMOSAA = dbCopyShape(leftDummyMOSAA pcCellView list(dummyMOSWidth + rightDummyPGToAASpace + (rightDummyPGPosX - leftDummyPGPosX) + leftDummyPGToAASpace:0 "R0" 1))
                    rightDummyMOSPG = dbCopyShape(leftDummyMOSPG pcCellView list(dummyMOSWidth + rightDummyPGToAASpace + (rightDummyPGPosX - leftDummyPGPosX) + leftDummyPGToAASpace:0 "R0" 1))
                    rightDummyMOSDummyPG = dbCopyShape(leftDummyMOSDummyPG pcCellView list(dummyMOSWidth + rightDummyPGToAASpace + (rightDummyPGPosX - leftDummyPGPosX) + leftDummyPGToAASpace + leftDummyPGToAASpace + dummyMOSWidth + rightDummyPGToAASpace + leftDummyPGLength :0 "R0" 1))
                    when(!dummyMOSNoNeedTab
                        rightDummyMOSTabPoints = dbPointArrayAndNot(
                            pcCellView
                            dbPointArrayAndNot(
                                pcCellView
                                list(expandBBox(grow(rightDummyMOSPG~>bBox "leftRight" dummyMOSPGTabWidth)))
                                list(expandBBox(rightDummyMOSPG~>bBox))
                            );dbPointArrayAndNot

                            list(expandBBox(grow(rightDummyMOSAA~>bBox "topBottom" -dummyMOSPGTabOverlapAA)))
                        );dbPointArrayAndNot
                
                        rightDummyMOSTabGroup = dbCreateGroup(
                            pcCellView
                            "rightDummyMOSTabGroup"
                            list("set" "ordered")
                        )

                        foreach(points rightDummyMOSTabPoints
                            dbAddObjectToGroup(
                                rightDummyMOSTabGroup
                                dbCreatePolygon(
                                    pcCellView
                                    PGTabLayer
                                    points
                                );firstTab
                            );dbAddObjectToGroup
                        );foreach

                    );when !dummyMOSNoNeedTab
                    

                    dbAddObjectToGroup(
                        rightDummyMOSGroup
                        rightDummyMOSAA
                    )
                    dbAddObjectToGroup(
                        rightDummyMOSGroup
                        rightDummyMOSPG
                    )
                    dbAddObjectToGroup(
                        rightDummyMOSGroup
                        rightDummyMOSDummyPG
                    )
                    when(!dummyMOSNoNeedTab
                        dbAddObjectToGroup(
                            rightDummyMOSGroup
                            rightDummyMOSTabGroup
                        );foreach
                    );when !noNeedTab
                    rightObjList = list()
                    rightDummyMOSDx = 0
                    
                    for(i  1 rightDummyMOSNumber-1
                        rightDummyMOSDx = rightDummyMOSDx + dummyMOSWidth + rightDummyPGToAASpace + rightDummyPGLength + leftDummyPGToAASpace
                        rightObjList = nconc(rightObjList copyGroup(rightDummyMOSGroup pcCellView list(rightDummyMOSDx:0 "R0" 1) list()))

                    );for    
                    foreach(obj rightObjList
                        dbAddObjectToGroup(
                            rightDummyMOSGroup
                            obj
                        )
                    );foreach
                
                    when(createLRDummyMOS
                        lrDummyMOSDy = 0
                        for(i 1 1 ;; only one row in top
                            lrDummyMOSDy = lrDummyMOSDy - dummyMOSHeight - dummyMOSSpace
                            copyGroup(rightDummyMOSGroup pcCellView list(0:lrDummyMOSDy "R0" 1) list())
                        );for
                    );when createLLDummyMOS
                    when(createURDummyMOS
                        urDummyMOSDy = 0
                        for(i 1 1 ;; only one row in top
                            urDummyMOSDy = urDummyMOSDy + dummyMOSHeight + dummyMOSSpace
                            copyGroup(rightDummyMOSGroup pcCellView list(0:urDummyMOSDy "R0" 1) list())
                        );for
                    );when createLLDummyMOS

                );when createRightDummyMOS

                when(!createLeftDummyMOS
                    foreach(obj leftDummyMOSGroup~>objects
                        if(obj~>objType == "group" then
                            foreach(childObj obj~>objects
                                dbDeleteObject(childObj)
                            );foreach
                        else
                            dbDeleteObject(obj)
                        );if
                    );foreach
                );when  only need the right dummy MOS, remove first left dummy mos
        
;;<5> create topcenter and bottom center dummy mos
                when(createTopBottomDummyMOS
                    when(createTopCenterDummyMOS
                        dbCopyShape(firstAA pcCellView list(0:wf + dummyMOSSpace "R0" 1))~>lpp = dummyMOSAALayer
                        topDummyMOSPGList = copyGroup(gateGroup pcCellView list(0:wf + dummyMOSSpace "R0" 1) list())
                        copyGroup(leftDummyPGGroup pcCellView list(0:wf + dummyMOSSpace "R0" 1) list())
                        copyGroup(rightDummyPGGroup pcCellView list(0:wf + dummyMOSSpace "R0" 1) list())
                        foreach(obj topDummyMOSPGList
                            when(obj~>objType == "label"
                                dbDeleteObject(obj)
                            )
                        );foreach
                    );createTopCenterDummyMOS
                    when(createBotCenterDummyMOS
                        dbCopyShape(firstAA pcCellView list(0: - wf - dummyMOSSpace "R0" 1))~>lpp = dummyMOSAALayer
                        botDummyMOSPGList = copyGroup(gateGroup pcCellView list(0:-wf - dummyMOSSpace "R0" 1) list())
                        copyGroup(leftDummyPGGroup pcCellView list(0:-wf - dummyMOSSpace "R0" 1) list())
                        copyGroup(rightDummyPGGroup pcCellView list(0:-wf - dummyMOSSpace "R0" 1) list())
                        foreach(obj botDummyMOSPGList
                            when(obj~>objType == "label"
                                dbDeleteObject(obj)
                            )
                        );foreach
                    );createBotCenterDummyMOS
                );when createTopBottomDummyMOS

;;<5.1> add new function when top/bot dummy mos width >4.0 set all top/bottom dummy mos width = 4.0
                maxTopBotDummyAAWidth = 4.0
                mainMOSAABBox = getBBoxFromLayer(pcCellView ActiveLayer)
                mainMOSAATopEdge = yCoord(upperRight(mainMOSAABBox))
                mainMOSAABotEdge = yCoord(lowerLeft(mainMOSAABBox))
                
                allDummyMOSAABBox = getBBoxFromLayer(pcCellView dummyMOSAALayer)
                allDummyMOSAATopEdge = yCoord(upperRight(allDummyMOSAABBox))
                allDummyMOSAABotEdge = yCoord(lowerLeft(allDummyMOSAABBox))
                ;; when top dummy mos exist
                when(wf > maxTopBotDummyAAWidth
                    allDummyMOSBBox = getBBoxFromLayer(pcCellView dummyMOSAALayer PGLayer dummyPGLayer)
                    when(mainMOSAATopEdge != allDummyMOSAATopEdge
                        topDummyMOSSearchBBox = list(xCoord(lowerLeft(allDummyMOSBBox)) : allDummyMOSAATopEdge - 2  upperRight(allDummyMOSBBox) )
                        ;dbCreateRect(pcCellView list("M2" "drawing") topDummyMOSSearchBBox)
                        ;;reset top dummy AA width
                        topDummyAAObjList = dbShapeQuery(pcCellView dummyMOSAALayer topDummyMOSSearchBBox)   
                        foreach(topDummyAAObj topDummyAAObjList
                            topDummyAAObj~>bBox = list(leftEdge(topDummyAAObj):bottomEdge(topDummyAAObj) rightEdge(topDummyAAObj):bottomEdge(topDummyAAObj) + maxTopBotDummyAAWidth ) 
                        );foreach
                        ;;reset top dummy PG height
                        topDummyPGObjList = nconc(dbShapeQuery(pcCellView dummyPGLayer topDummyMOSSearchBBox)   dbShapeQuery(pcCellView PGLayer topDummyMOSSearchBBox))
                        foreach(topDummyPGObj topDummyPGObjList
                            topDummyPGObj~>points = list(caar(topDummyPGObj~>points):cadar(topDummyPGObj~>points) caar(topDummyPGObj~>points):topEdge(topDummyPGObj) - (wf-maxTopBotDummyAAWidth) ) 
                        );foreach
                        ;; move top PG tab
                        topDummyPGTabObjList = dbShapeQuery(pcCellView PGTabLayer topDummyMOSSearchBBox)
                        ;fprintf(stdout "topPGTab = %L\n" topDummyPGTabObjList)
                        when(topDummyPGTabObjList
                            ;fprintf(stdout "topPGTab = %L\n" topDummyPGTabObjList)
                            foreach(topDummyPGTabObj topDummyPGTabObjList
                                dbMoveFig(topDummyPGTabObj pcCellView list(0:-(wf-maxTopBotDummyAAWidth) "R0"))
                            );foreach
                        );when
                    );when top dummy mos exist
                    ;;
                    ;; when bot dummy mos exist
                    when(mainMOSAABotEdge != allDummyMOSAABotEdge
                        bottomDummyMOSSearchBBox = list(lowerLeft(allDummyMOSBBox)  xCoord(upperRight(allDummyMOSBBox)) : allDummyMOSAABotEdge + 2 )
                       ; dbCreateRect(pcCellView list("M2" "drawing") bottomDummyMOSSearchBBox)
                        ;;reset bot dummy AA width
                        bottomDummyAAObjList = dbShapeQuery(pcCellView dummyMOSAALayer bottomDummyMOSSearchBBox)   
                        foreach(bottomDummyAAObj bottomDummyAAObjList
                            bottomDummyAAObj~>bBox = list(leftEdge(bottomDummyAAObj):topEdge(bottomDummyAAObj)-maxTopBotDummyAAWidth rightEdge(bottomDummyAAObj):topEdge(bottomDummyAAObj))
                        );foreach
                        ;;reset bot dummy PG height
                        bottomDummyPGObjList = nconc(dbShapeQuery(pcCellView dummyPGLayer bottomDummyMOSSearchBBox)   dbShapeQuery(pcCellView PGLayer bottomDummyMOSSearchBBox))
                        foreach(bottomDummyPGObj bottomDummyPGObjList
                            bottomDummyPGObj~>points = list(caar(bottomDummyPGObj~>points):bottomEdge(bottomDummyPGObj) + (wf-maxTopBotDummyAAWidth)  caar(bottomDummyPGObj~>points):topEdge(bottomDummyPGObj))
                        );foreach
                        ;; move bot PG tab
                        bottomDummyPGTabObjList = dbShapeQuery(pcCellView PGTabLayer bottomDummyMOSSearchBBox)
                        ;fprintf(stdout "topPGTab = %L\n" topDummyPGTabObjList)
                        when(bottomDummyPGTabObjList
                            ;fprintf(stdout "topPGTab = %L\n" bottomDummyPGTabObjList)
                            foreach(bottomDummyPGTabObj bottomDummyPGTabObjList
                                dbMoveFig(bottomDummyPGTabObj pcCellView list(0:(wf-maxTopBotDummyAAWidth) "R0"))
                            );foreach
                        );when
                    );when bot dummy mos exist
                );when

;;<5.x> add new function for user remove all dummy PG
                when(removeAllDummyPG
                    foreach(shapeId pcCellView~>shapes
                        when(shapeId~>lpp == dummyPGLayer
                            dbDeleteObject(shapeId)
                        );when
                    );foreach
                );when

;;<5.x> add new function for connect dummy MOS use PG_drawing
                when(createConnectPG
                    dummyMOSConnectPGWidth = 0.23
                    allDummyMOSAABBox = getBBoxFromLayer(pcCellView dummyMOSAALayer)
                    allDummyMOSAATopEdge = yCoord(upperRight(allDummyMOSAABBox))
                    allDummyMOSAABotEdge = yCoord(lowerLeft(allDummyMOSAABBox))
                    when(createLeftDummyMOS
                        leftDummyMOSObjList = setof(obj getAllObjFromGroup(leftDummyMOSGroup) obj~>bBox != leftDummyMOSAA~>bBox)
                        leftDummyMOSObjBBox = getBBoxFromObjList(leftDummyMOSObjList)

                        dbCreateRect(
                            pcCellView
                            list("PG" "drawing")
                            growEdge(leftDummyMOSObjBBox "top" dummyMOSConnectPGWidth)
                        )
                        dbCreateRect(
                            pcCellView
                            list("PG" "drawing")
                            growEdge(leftDummyMOSObjBBox "bot" dummyMOSConnectPGWidth)
                        )
                    );when
                    when(createRightDummyMOS
                        rightDummyMOSObjList = setof(obj getAllObjFromGroup(rightDummyMOSGroup) obj~>bBox != rightDummyMOSAA~>bBox)
                        rightDummyMOSObjBBox = getBBoxFromObjList(rightDummyMOSObjList)

                        dbCreateRect(
                            pcCellView
                            list("PG" "drawing")
                            growEdge(rightDummyMOSObjBBox "top" dummyMOSConnectPGWidth)
                        )
                        dbCreateRect(
                            pcCellView
                            list("PG" "drawing")
                            growEdge(rightDummyMOSObjBBox "bot" dummyMOSConnectPGWidth)
                        )
                    );when
                ;; top/bot PG connect PG
                    when(mainMOSAATopEdge != allDummyMOSAATopEdge       
                        ; top dummy exist
                        topDummyAAandPGQueryBBox  = getBBoxFromObjList(nconc(
                                dbShapeQuery(pcCellView PGLayer      list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAATopEdge-0.5 xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAATopEdge+0.5 ))  
                                dbShapeQuery(pcCellView PGTabLayer   list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAATopEdge-0.5 xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAATopEdge+0.5 ))
                                dbShapeQuery(pcCellView dummyPGLayer list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAATopEdge-0.5 xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAATopEdge+0.5 ))
                                ))
                       
                        dbCreateRect(
                            pcCellView
                            list("PG")
                            growEdge(topDummyAAandPGQueryBBox "top" dummyMOSConnectPGWidth)
                        )
                        dbCreateRect(
                            pcCellView
                            list("PG")
                            growEdge(topDummyAAandPGQueryBBox "bot" dummyMOSConnectPGWidth)
                        )
                    );when
                        ; bot dummy exist
                    when(mainMOSAABotEdge != allDummyMOSAABotEdge
                        ;botDummyAAandPGQueryBBox  = getBBoxFromObjList(dbShapeQuery(pcCellView PGLayer list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAABotEdge xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAABotEdge+0.5 )))
                        botDummyAAandPGQueryBBox  = getBBoxFromObjList(nconc(
                                dbShapeQuery(pcCellView PGLayer      list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAABotEdge-0.5 xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAABotEdge+0.5))
                                dbShapeQuery(pcCellView PGTabLayer   list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAABotEdge-0.5 xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAABotEdge+0.5))
                                dbShapeQuery(pcCellView dummyPGLayer list(xCoord(lowerLeft(allDummyMOSAABBox))-1.0 : allDummyMOSAABotEdge-0.5 xCoord(upperRight(allDummyMOSAABBox))+1.0 : allDummyMOSAABotEdge+0.5))
                                ))
                        dbCreateRect(
                            pcCellView
                            list("PG")
                            growEdge(botDummyAAandPGQueryBBox "top" dummyMOSConnectPGWidth)
                        )
                        dbCreateRect(
                            pcCellView
                            list("PG")
                            growEdge(botDummyAAandPGQueryBBox "bot" dummyMOSConnectPGWidth)
                        )
                    );when
                );when createConnectPG
            
                ;;2023-02-24 add new function for remove all top/bot pg 
                when(removeTopBotPG
                    ;;use boundaryBBox to minus main mos box and delete all PG in result bBox
                    boundaryBBox = pcCellView~>bBox
                    mainMOSBBox = firstAA~>bBox

                    innerCutBBoxLLX = xCoord(lowerLeft(boundaryBBox))
                    innerCutBBoxLLY = yCoord(lowerLeft(mainMOSBBox)) -  dummyMOSSpace
                    innerCutBBoxURX = xCoord(upperRight(boundaryBBox))
                    innerCutBBoxURY = yCoord(upperRight(mainMOSBBox)) + dummyMOSSpace 

                    innerCutBBox = list(innerCutBBoxLLX:innerCutBBoxLLY innerCutBBoxURX:innerCutBBoxURY)

                    bBoxforRemoveTopBotPG = dbPointArrayAndNot(
                        pcCellView
                        list(expandBBox(boundaryBBox))
                        list(expandBBox(innerCutBBox))
                    )
                    
                    if(bBoxforRemoveTopBotPG then
                        foreach(bBox bBoxforRemoveTopBotPG
                            removePGList = nconc(
                                    dbShapeQuery(pcCellView PGLayer pointsToBBox(bBox))
                                    dbShapeQuery(pcCellView PGTabLayer pointsToBBox(bBox))
                                    dbShapeQuery(pcCellView dummyPGLayer pointsToBBox(bBox))
                                    dbShapeQuery(pcCellView list("PG") pointsToBBox(bBox))
                                );removePGList
                            foreach(obj removePGList
                                dbDeleteObject(obj)        
                            )
                       );foreach                    
                    );if
                );when
                when(removeFirstDummyPG
                    boundaryBBox = pcCellView~>bBox
                    mainMOSBBox = firstAA~>bBox
                    
                    detectRemoveBBox = list((xCoord(lowerLeft(mainMOSBBox))-(leftDummyPGToAASpace*2 + leftDummyPGLength)) : yCoord(lowerLeft(boundaryBBox))
                                            (xCoord(upperRight(mainMOSBBox))+(rightDummyPGToAASpace*2 + rightDummyPGLength)) : yCoord(upperRight(boundaryBBox))
                                            );list
                    foreach(obj dbShapeQuery(pcCellView list("PG" "DUMMY") detectRemoveBBox )
                        dbDeleteObject(obj)
                    );foreach
                );when

;;<6> create symmetry implant for all the dummy MOS            
                dummyMOSAABBox = getBBoxFromLayer(pcCellView dummyMOSAALayer ActiveLayer)
                dummyMOSPGBBox = getBBoxFromLayer(pcCellView dummyMOSPGLayer PGLayer)
                dummyMOSGateBBox = pointsToBBox(car(
                    dbPointArrayAnd(
                        pcCellView
                        list(expandBBox(dummyMOSPGBBox))
                        list(expandBBox(dummyMOSAABBox))
                )))
                createSymmetryImp(pcCellView symmetryImpList dummyMOSAABBox dummyMOSGateBBox)

;;<7> create asymmetryImp 
                when(asymmetryImp
                    ;;1 copy asymmetryImp from main mos
                    allAsymmetryImpList = list()
                    
                    foreach(obj setof(obj pcCellView~>shapes (obj~>lpp == sourceLDDLayer || obj~>lpp == drainLDDLayer))
                        ;allAsymmetryImpList = append1(allAsymmetryImpList dbCopyShape(obj pcCellView list(0:0 "R0" 1)))
                        allAsymmetryImpList = append1(allAsymmetryImpList obj)
                    );foreach

                    dummyMOSLddBBox= pointsToBBox(car(dbPointArrayOr(
                        pcCellView
                        list(expandBBox(
                                grow(
                                    grow(dummyMOSAABBox "topBottom" lddEncAASide1)   
                                    "leftRight"
                                    lddEncAASide2
                                );grow
                            );expandBBox
                        );list
                        list(expandBBox(
                                grow(
                                    grow(dummyMOSGateBBox "topBottom" lddEncGateSide1)
                                    "leftRight"
                                    lddEncGateSide2
                                );grow
                            );expandBBox
                        );list
                    )));dummyMOSLddBBox 
                    foreach(obj allAsymmetryImpList
                        LLPosX = leftEdge(obj)
                        LLPosY = bottomEdge(obj)
                        URPosX = rightEdge(obj)
                        URPosY = topEdge(obj)

                        LLPosY = yCoord(lowerLeft(dummyMOSLddBBox))
                        URPosY = yCoord(upperRight(dummyMOSLddBBox))
                        cond(
                            (LLPosX < leftEdge(firstAA) && URPosX > leftEdge(firstAA)
                                LLPosX = xCoord(lowerLeft(dummyMOSLddBBox))
                            )
                            (LLPosX < rightEdge(firstAA) && URPosX > rightEdge(firstAA)
                                URPosX = xCoord(upperRight(dummyMOSLddBBox))
                            )
                        );cond

                        obj~>bBox = list(LLPosX: LLPosY URPosX:URPosY)
                    );foreach
                );when asymmetryImp

            );when create Dummy MOS

        ;;2023/03/02 add new button for remove nwell
            when(removeNW
                foreach(shape pcCellView~>shapes
                    when(shape~>lpp == list("NW" "drawing")
                        dbDeleteObject(shape)
                    );when
                );foreach

            );when
;;[X] change the cellView center to 0:0
        setCellViewOrigin(pcCellView)

        );let
    );pcDefinePCell


;;==============================================
;; create CDF
    
    unless( cellId = ddGetObj( libName  lvsmodel)
        error( "Could not get cell %s."  lvsmodel)
    )
    when( cdfId = cdfGetBaseCellCDF( cellId )
        cdfDeleteCDF( cdfId )
        printf("Delet the cdf success for %s \n" lvsmodel) 
    )
    cdfId  = cdfCreateBaseCellCDF( cellId )
    ;;;;;;
    cdfCreateParam( cdfId
        ?name           "model"
        ?prompt         "model"
        ?defValue       model
        ?type           "string"
        ?use            "t"
        ?display        "t"
        ?editable       "nil"
    )
    cdfCreateParam( cdfId
        ?name           "lvsmodel"
        ?prompt         "lvs name"
        ?defValue       lvsmodel
        ?type           "string"
        ?use            "t"
        ?display        "t"
        ?editable       "nil"
    )
    cdfCreateParam( cdfId
        ?name           "wf"
        ?prompt         "Fingure width"
        ?defValue       wf
        ?type           "string"
        ?display        "t"
        ?editable       "t"
    )
    cdfCreateParam( cdfId
        ?name           "l"
        ?prompt         "Length"
        ?defValue       l
        ?type           "string"
        ?display        "t"
        ?editable       "t"
    )
    cdfCreateParam( cdfId
        ?name           "nf"
        ?prompt         "nf"
        ?defValue       nf
        ?type           "int"
        ?display        "t"
        ?editable       "t"
    )
    cdfCreateParam( cdfId
        ?name           "limiter"
        ?prompt         "limiter"
        ?type           "boolean"
        ?defValue       limiter
        ?display        "t"
        ;?callback       "tegMosCB('limiter)"
    )
    cdfCreateParam( cdfId
        ?name           "CORE_mode"
        ?prompt         "CORE mode"
        ?type           "boolean"
        ?defValue       nil
        ?display        "t"
        ;?callback       "tegMosCB('limiter)"
    )

    cdfCreateParam( cdfId
        ?name           "PGExtAADefine"
        ?prompt         "PG Ext AA Define "
        ?type           "float"
        ?defValue       PGExtAADefine
        ?display        "t"
        ;?callback       "tegMosCB('limiter)"
    )

;;remove SD pc M0
    cdfCreateParam( cdfId
        ?name           "removeLeftRightPCM0"
        ?prompt         "Remove LeftRight PC/M0"
        ?type           "boolean"
        ?defValue       nil
        ?display        "isLayout()"
    )
    cdfCreateParam( cdfId
        ?name           "removeAllTab"
        ?prompt         "Remove all PG Tab"
        ?type           "boolean"
        ?defValue       nil
        ?display        "isLayout()"
    )
    cdfCreateParam( cdfId
        ?name           "PSE"
        ?prompt         "PSE button"
        ?type           "boolean"
        ?defValue       PSE
        ?display        "isLayout()"
    )
    cdfCreateParam( cdfId
        ?name           "PSEDefine"
        ?prompt         "  --PSE value define"
        ?type           "float"
        ?defValue       PSEDefine
        ?display        "isLayout() && cdfgData->PSE->value"
    )
    cdfCreateParam( cdfId
        ?name           "PSENotChangeAAWidth"
        ?prompt         "  --PSE no change AA Width "
        ?type           "boolean"
        ?defValue       nil
        ?display        "isLayout() && cdfgData->PSE->value"
    )
    cdfCreateParam( cdfId
        ?name           "leftOnlySourceLDDRightOnlyDrainLDD"
        ?prompt         "Set asymmetry LDD Left Drain/ Right Source"
        ?type           "boolean"
        ?defValue       t
        ?display        "isLayout()"
    )
    cdfCreateParam( cdfId
        ?name           "PCDefine"
        ?prompt         "PC related define"
        ?type           "boolean"
        ?defValue       nil
        ?editable       "t"
        ?display        "t"
        ?callback       "tegMosCB('PCDefine)"
    )

    cdfCreateParam( cdfId
        ?name           "removeAllPC"
        ?prompt         "--remove all PC "
        ?type           "boolean"
        ?defValue       nil
        ?editable       "t"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "sourceContToPCSpace"
        ?prompt         "----SCGS"
        ?type           "float"
        ?defValue       sourceContToPCSpace
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )

    cdfCreateParam( cdfId
        ?name           "drainContToPCSpace"
        ?prompt         "----DCGS"
        ?type           "float"
        ?defValue       drainContToPCSpace
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "leftAAEncPCValue"
        ?prompt         "----Left AA edge Enc PC"
        ?type           "float"
        ?defValue       leftAAEncPCValue
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "rightAAEncPCValue"
        ?prompt         "----Right AA edge Enc PC"
        ?type           "float"
        ?defValue       rightAAEncPCValue
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "AAEncSourcePCTopDefine"
        ?prompt         "----AA Enc Source PC Top Edge"
        ?type           "float"
        ?defValue       AAEncSourcePCTopDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "AAEncSourcePCBotDefine"
        ?prompt         "----AA Enc Source PC Bot Edge"
        ?type           "float"
        ?defValue       AAEncSourcePCBotDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "AAEncDrainPCTopDefine"
        ?prompt         "----AA Enc Drain PC Top Edge"
        ?type           "float"
        ?defValue       AAEncDrainPCTopDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "AAEncDrainPCBotDefine"
        ?prompt         "----AA Enc Drain PC Bot Edge"
        ?type           "float"
        ?defValue       AAEncDrainPCBotDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "cdfgData->PCDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "AAEncPGtabByUser"
        ?prompt         "AA Enc PGtab by user defined"
        ?type           "float"
        ?defValue       AAEncPGtabByUser
        ?editable       "!cdfgData->limiter->value"
        ?display        "!cdfgData->limiter->value"
    )

;;dummy PG
    cdfCreateParam( cdfId
        ?name           "dummyPG"
        ?prompt         "Dummy PG related define"
        ?type           "boolean"
        ?defValue       nil
        ?display        "isLayout()"
    )

    cdfCreateParam( cdfId
        ?name           "removeAllDummyPG"
        ?prompt         "  --remove all dummy PG"
        ?type           "boolean"
        ?defValue       nil
        ?display        "isLayout()  && cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "leftDummyPGNumberDefine"
        ?prompt         "  --Left Dummy PG numbers"
        ?type           "int"
        ?defValue       leftDummyPGNumberDefine
        ?editable       "t"
        ?display        "isLayout() && cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "rightDummyPGNumberDefine"
        ?prompt         "  --Right Dummy PG numbers"
        ?type           "int"
        ?defValue       rightDummyPGNumberDefine
        ?editable       "t"
        ?display        "isLayout()&& cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "leftDummyPGLengthDefine"
        ?prompt         "  --Left Dummy PG width "
        ?type           "float"
        ?defValue       leftDummyPGLengthDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "isLayout()&& cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "rightDummyPGLengthDefine"
        ?prompt         "  --Right Dummy PG width "
        ?type           "float"
        ?defValue       rightDummyPGLengthDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "isLayout()&& cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "leftDummyPGToAASpaceDefine"
        ?prompt         "  --Left Dummy to AA Space "
        ?type           "float"
        ?defValue       leftDummyPGToAASpaceDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "isLayout()&& cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "rightDummyPGToAASpaceDefine"
        ?prompt         "  --Right Dummy to AA Space "
        ?type           "float"
        ?defValue       rightDummyPGToAASpaceDefine
        ?editable       "!cdfgData->limiter->value"
        ?display        "isLayout()&& cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "dummyPGSpaceDefine"
        ?prompt         "  --Dummy PG to Dummy PG Space"
        ?type           "boolean"
        ?defValue       dummyPGSpaceDefine
        ?display        "isLayout() && cdfgData->dummyPG->value"
    )
    cdfCreateParam( cdfId
        ?name           "leftDummyPGSpaceUser"
        ?prompt         "        --left Dummy PG to Dummy PG Space"
        ?type           "float"
        ?defValue       leftDummyPGSpaceUser
        ?display        "isLayout() && cdfgData->dummyPG->value && cdfgData->dummyPGSpaceDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "rightDummyPGSpaceUser"
        ?prompt         "        --right Dummy PG to Dummy PG Space"
        ?type           "float"
        ?defValue       rightDummyPGSpaceUser
        ?display        "isLayout() && cdfgData->dummyPG->value && cdfgData->dummyPGSpaceDefine->value"
    )


;M0 width   
    cdfCreateParam( cdfId
        ?name           "enlargeM0ToAlignWithAA"
        ?prompt         "Align M0 Short Side to AA Width Edge"
        ?type           "boolean"
        ?defValue       nil
        ?display        "isLayout()"
    )
    cdfCreateParam( cdfId
        ?name           "sourceM0WidthDefine"
        ?prompt         "Soure M0 width"
        ?type           "float"
        ?defValue       sourceM0WidthDefine
        ?editable       "t"
        ?display        "isLayout()"
    )
    cdfCreateParam( cdfId
        ?name           "drainM0WidthDefine"
        ?prompt         "Drain M0 width"
        ?type           "float"
        ?defValue       drainM0WidthDefine
        ?editable       "t"
        ?display        "isLayout()"
    )
;;dummy MOS
    cdfCreateParam( cdfId
        ?name           "DummyMOSDefine"
        ?prompt         "Create Dummy MOS"
        ?type           "boolean"
        ?defValue       nil
        ?editable       "t"
        ?display        "t"
        ?callback       "tegMosCB('DummyMOSDefine)"
    )
;; left
    cdfCreateParam( cdfId
        ?name           "createLeftDummyMOS"
        ?prompt         "----Create Left Dummy MOS"
        ?type           "boolean"
        ?defValue       createLeftDummyMOS
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value"
        ;?callback       "tegMosCB('createLeftDummyMOS)"
    )
    cdfCreateParam( cdfId
        ?name           "leftDummyMOSNumber"
        ?prompt         "       Left Dummy MOS numbers"
        ?type           "int"
        ?defValue       leftDummyMOSNumber
        ?editable       "t"
        ?display        "cdfgData->createLeftDummyMOS->value"
    )
    cdfCreateParam( cdfId
        ?name           "createLLDummyMOS"
        ?prompt         "       Create lowerLeft Dummy MOS"
        ?type           "boolean"
        ?defValue       createLLDummyMOS
        ?editable       "t"
        ?display        "cdfgData->createLeftDummyMOS->value"
    )
    cdfCreateParam( cdfId
        ?name           "createULDummyMOS"
        ?prompt         "       Create upperLeft Dummy MOS"
        ?type           "boolean"
        ?defValue       createULDummyMOS
        ?editable       "t"
        ?display        "cdfgData->createLeftDummyMOS->value"
    )
;;right
    cdfCreateParam( cdfId
        ?name           "createRightDummyMOS"
        ?prompt         "----Create Right Dummy MOS"
        ?type           "boolean"
        ?defValue       createRightDummyMOS
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value"
        ;?callback       "tegMosCB('createRightDummyMOS)"
    )
    cdfCreateParam( cdfId
        ?name           "rightDummyMOSNumber"
        ?prompt         "       Right Dummy MOS numbers"
        ?type           "int"
        ?defValue       rightDummyMOSNumber
        ?editable       "t"
        ?display        "cdfgData->createRightDummyMOS->value"
    )
    cdfCreateParam( cdfId
        ?name           "createLRDummyMOS"
        ?prompt         "       Create lowerRight Dummy MOS"
        ?type           "boolean"
        ?defValue       createLLDummyMOS
        ?editable       "t"
        ?display        "cdfgData->createRightDummyMOS->value"
    )
    cdfCreateParam( cdfId
        ?name           "createURDummyMOS"
        ?prompt         "       Create upperRight Dummy MOS"
        ?type           "boolean"
        ?defValue       createULDummyMOS
        ?editable       "t"
        ?display        "cdfgData->createRightDummyMOS->value"
    )
;;center top bottom

    cdfCreateParam( cdfId
        ?name           "createTopBottomDummyMOS"
        ?prompt         "----Create Top Bottom Dummy MOS"
        ?type           "boolean"
        ?defValue       nil
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value"
    )

    cdfCreateParam( cdfId
        ?name           "createTopCenterDummyMOS"
        ?prompt         "       Create Top Dummy MOS"
        ?type           "boolean"
        ?defValue       createTopCenterDummyMOS
        ?editable       "t"
        ?display        "cdfgData->createTopBottomDummyMOS->value"
    )
    cdfCreateParam( cdfId
        ?name           "createBotCenterDummyMOS"
        ?prompt         "       Create Bot Dummy MOS"
        ?type           "boolean"
        ?defValue       createBotCenterDummyMOS
        ?editable       "t"
        ?display        "cdfgData->createTopBottomDummyMOS->value"
    )

    cdfCreateParam( cdfId
        ?name           "dummyMOSSpace"
        ?prompt         "----Dummy MOS Space(actice Y direct)"
        ?type           "float"
        ?defValue       dummyMOSSpace
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "dummyMOSGateLengthDefine"
        ?prompt         "----Dummy MOS gate define"
        ?type           "boolean"
        ?defValue       dummyMOSGateLengthDefine
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "dummyMOSGateLength"
        ?prompt         "   --Dummy MOS gate length user"
        ?type           "float"
        ?defValue       dummyMOSGateLength
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value && cdfgData->dummyMOSGateLengthDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "dummyMOSAAWidthDefine"
        ?prompt         "----Dummy MOS AA Width define"
        ?type           "boolean"
        ?defValue       dummyMOSAAWidthDefine
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "dummyMOSAAWidth"
        ?prompt         "   --Dummy MOS AA width user"
        ?type           "float"
        ?defValue       dummyMOSAAWidth
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value && cdfgData->dummyMOSAAWidthDefine->value"
    )
    cdfCreateParam( cdfId
        ?name           "createConnectPG"
        ?prompt         "----create connect PG drawing"
        ?type           "boolean"
        ?defValue       t
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value "
    )
    cdfCreateParam( cdfId
        ?name           "removeTopBotPG"
        ?prompt         "----remove Top Bot PG"
        ?type           "boolean"
        ?defValue       nil
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value "
    )
    cdfCreateParam( cdfId
        ?name           "removeFirstDummyPG"
        ?prompt         "----remove 1st dummy PG"
        ?type           "boolean"
        ?defValue       nil
        ?editable       "t"
        ?display        "cdfgData->DummyMOSDefine->value "
    )

    cdfCreateParam( cdfId
        ?name           "removeNW"
        ?prompt         "remove NWell"
        ?type           "boolean"
        ?defValue       nil
        ?display        "rexMatchp(\"pt*\" cdfgData->model->value)"
    )
;; 
;add for verilog netlist
    cdfCreateParam( cdfId
        ?name           "hnlVerilogCDFdefparamList"
        ?prompt         "hnlVerilogCDFdefparamList"
        ?defValue       "mostype"
        ?type           "string"
        ?display        "innoIsSchematic()"
        ?editable       "nil"
    )
    cdfCreateParam( cdfId
        ?name           "str"
        ?prompt         "verilogModePrefix"
        ?defValue       " "
        ?type           "string"
        ?display        "nil"
        ?editable       "t"
    )
    cdfCreateParam( cdfId
        ?name           "verilogWeak"
        ?prompt         "verilogWeak"
        ?defValue       nil
        ?type           "boolean"
        ?display        "innoIsSchematic()"
        ?editable       "t"
        ?callback       "innoVerilogWeakCB()"
    )
    cdfCreateParam( cdfId
        ?name           "ad"
        ?prompt         "Drain diffusion area"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "as"
        ?prompt         "Source diffusion area"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "pd"
        ?prompt         "Drain diffusion periphery"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "ps"
        ?prompt         "Source diffusion periphery"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "nrd"
        ?prompt         "Drain diffusion res squares"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "nrs"
        ?prompt         "Source diffusion res squares"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "delvto"
        ?prompt         "delvto"
        ?units          "voltage"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "sigloc"
        ?prompt         "sigloc"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "geo"
        ?prompt         "Source/drain selector"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "innoIsSchematic()"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "rdc"
        ?prompt         "Additional drain resistance"
        ?units          "resistance"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "rsc"
        ?prompt         "Additional source resistance"
        ?units          "resistance"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "sa"
        ?prompt         "Dist. OD & poly(one side)"
        ?defValue       ""
        ?type           "string"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "sb"
        ?prompt         "Dist. OD & poly(other side)"
        ?defValue       ""
        ?type           "string"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "sd"
        ?prompt         "Dist. betn neighbour fingers"
        ?defValue       ""
        ?type           "string"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "ld"
        ?prompt         "Drain diffusion length"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "ls"
        ?prompt         "Source diffusion length"
        ?units          "lengthMetric"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "trise"
        ?prompt         "Temp rise from ambient"
        ?defValue       ""
        ?type           "string"
        ?use            "!cdfgData->triseSpec || cdfgData->triseSpec->value == \"trise\""
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "region"
        ?prompt         "Estimated operating region"
        ?defValue       " "
        ?choices        '(" " "off" "triode" "sat" "subth")
        ?type           "cyclic"
        ?display        "nil"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "degradation"
        ?prompt         "Hot-electron degradation"
        ?defValue       " "
        ?choices        '(" " "no" "yes")
        ?type           "cyclic"
        ?display        "nil"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "off"
        ?prompt         "Device initially off"
        ?type           "boolean"
        ?display        "nil"
    )
    cdfCreateParam( cdfId
        ?name           "Vds"
        ?prompt         "Drain source initial voltage"
        ?units          "voltage"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "Vgs"
        ?prompt         "Gate source initial voltage"
        ?units          "voltage"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "Vbs"
        ?prompt         "Bulk source initial voltage"
        ?units          "voltage"
        ?defValue       ""
        ?type           "string"
        ?use            "t"
        ?display        "nil"
        ?editable       "t"
        ?parseAsNumber  "yes"
        ?parseAsCEL     "yes"
    )
    cdfCreateParam( cdfId
        ?name           "dtemp"
        ?prompt         "Temperature difference"
        ?defValue       ""
        ?type           "string"
        ?display        "nil"
    )
    ;;; Simulator Information

    if(rexMatchp("^p.*" model)
          then mosTypeList= '("pmos" "rpmos" "tranif0" "rtranif0")
               componentName = 'pmos
          else mosTypeList= '("nmos" "rnmos" "tranif1" "rtranif1")
               componentName = 'nmos
    );if


    cdfId->simInfo = list( nil )
    cdfId->simInfo->FineSim = '( nil
        modelParamExprList nil
        optParamExprList  nil
        propMapping       nil
        termMapping       nil
        termOrder         nil
        namePrefix        ""
        componentName     nil
        instParameters    nil
        otherParameters   nil
        netlistProcedure  nil
    )

    cdfId->simInfo->HSPICE = list(nil
        'modelParamExprList nil
        'optParamExprList  nil
        'opParamExprList   nil
        'propMapping       '(nil vds Vds vgs Vgs vbs Vbs)
        'termMapping       '(nil D \,D G \,G S \,S B \,B)
        'termOrder         '(D G S B)
        'namePrefix        "X"
        'componentName     componentName 
        'instParameters    '(w l nf ad as pd ps nrd nrs rdc rsc off Vds Vgs Vbs dtemp geo delvto)
        'otherParameters   '(model)
        'netlistProcedure  nil
    )
    cdfId->simInfo->ams = '( nil
        extraTerminals    nil
        componentName     nil
        excludeParameters nil
        arrayParameters   nil
        stringParameters  nil
        referenceParameters nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        isPrimitive       (t)
        enumParameters    (region degradation)
        termOrder         (D G S B)
        termMapping       (nil D \:d G \:g S \:s B \:b)
        instParameters    (w l as ad ps pd nrd nrs ld ls trise model geo rdc rsc sa sb sd)
        otherParameters   (model)
    )
    cdfId->simInfo->auCdl   =  list( nil
        'dollarEqualParams nil
        'dollarParams      nil
        'otherParameters   '(model)
        'netlistProcedure  'ansCdlCompParamPrim
        'instParameters    '(L W nf)
        'componentName     componentName
        'termOrder         '(D G S B)
        'propMapping       '(nil L l W w nf nf)
        'namePrefix        "M"
        'modelName         lvsmodel
    )
    cdfId->simInfo->auLvs   = list( nil
        'deviceTerminals   ""
        'otherParameters   nil
        'propMapping       nil
        'netlistProcedure  'ansLvsCompPrim
        'instParameters    '(l w)
        'componentName     componentName
        'termOrder         '(D G S B)
        'permuteRule       "(p D S)"
        'namePrefix        "M"
    )
    cdfId->simInfo->hspiceD =  list( nil
        'opParamExprList   nil
        'optParamExprList  nil
        'termMapping       '(nil D \,D G \,G S \,S B \,B)
        'netlistProcedure  nil
        'instParameters    '(w l nf ad as pd ps nrd nrs rdc rsc Vds Vgs Vbs dtemp geo delvto)
        'otherParameters   '(model)
        'componentName     componentName
        'termOrder         '(D G S B)
        'dataAccessMap     '((IDC (D "id")))
        'propMapping       '(nil vds Vds vgs Vgs vbs Vbs)
        'namePrefix        "XM"
    )
    cdfId->simInfo->spectre = '( nil
        modelParamExprList nil
        optParamExprList  nil
        opParamExprList   nil
        stringParameters  nil
        componentName     nil
        netlistProcedure  nil
        propMapping       nil
        namePrefix        ""
        otherParameters   (model)
        instParameters    (w l nf as ad ps pd nrd nrs ld ls trise region degradation geo rdc rsc sa sb sd)
        termOrder         (D G S B)
        termMapping       (nil D \:d G \:g S \:s B \:b)
    )

    ;;; Properties
    cdfId->formInitProc            = ""
    cdfId->doneProc                = ""
    cdfId->buttonFieldWidth        = 350
    cdfId->fieldHeight             = 35
    cdfId->fieldWidth              = 350
    cdfId->promptWidth             = 175
    cdfId->instDisplayMode         = "instName"
    cdfId->paramEvaluate           = "nil nil nil nil t"
    cdfId->paramDisplayMode        = "parameter"
    cdfId->modelLabelSet           = "vto kp gamma"
    cdfId->opPointLabelSet         = "id vgs vds"
    cdfId->paramLabelSet           = "-lvsmodel w l nf -mostype tf -tr"

    cdfSaveCDF( cdfId )
);procedure create MOS


procedure(createSymmetryImp(pcCellView symmetryImpList AABBox gateBBox)
let((NWEncAASide1 NWEncAASide2)
    foreach(layer symmetryImpList  ;; create symmetry implant for all dummy MOS
        cond(
            (rexMatchp(".*dnw$" lay_lvsmodel)
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                dbCreateRect(
                    pcCellView
                    list("DNW" "drawing")
                    grow(
                        grow(AABBox "topBottom" DNWEncAASide1)   
                        "leftRight"
                        DNWEncAASide2
                    );grow
                );dbCreateRect
            ); dnw
            (layer == "NW"
                if(rexMatchp("^ptn.*" lay_lvsmodel) then
                    NWEncAASide1 = NWEncThinAASide1
                    NWEncAASide2 = NWEncThinAASide2
                else
                    NWEncAASide1 = NWEncThickAASide1
                    NWEncAASide2 = NWEncThickAASide2
                )
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                dbCreateRect(
                    pcCellView
                    list("NW" "drawing")
                    grow(
                        grow(AABBox "topBottom" NWEncAASide1)   
                        "leftRight"
                        NWEncAASide2
                    );grow
                );dbCreateRect
            );nw
            (rexMatchp("^[NP]CH.*" layer)
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                channelBBox = dbPointArrayOr(
                    pcCellView
                    list(expandBBox(
                            grow(
                                grow(AABBox "topBottom" channelEncAASide1)   
                                "leftRight"
                                channelEncAASide2
                            );grow
                        );expandBBox
                    );list
                    list(expandBBox(
                            grow(
                                grow(gateBBox "topBottom" channelEncGateSide1)
                                "leftRight"
                                channelEncGateSide2
                            );grow
                        );expandBBox
                    );list
                )
                dbCreateRect(
                    pcCellView
                    list(layer "drawing")
                    pointsToBBox(car(channelBBox))
                    
                );dbCreateRect
            );channel
            (rexMatchp("^[NP]L.*" layer)
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                lddBBox= dbPointArrayOr(
                    pcCellView
                    list(expandBBox(
                            grow(
                                grow(AABBox "topBottom" lddEncAASide1)   
                                "leftRight"
                                lddEncAASide2
                            );grow
                        );expandBBox
                    );list
                    list(expandBBox(
                            grow(
                                grow(gateBBox "topBottom" lddEncGateSide1)
                                "leftRight"
                                lddEncGateSide2
                            );grow
                        );expandBBox
                    );list
                )
                dbCreateRect(
                    pcCellView
                    list(layer "drawing")
                    pointsToBBox(car(lddBBox))
                    
                );dbCreateRect
            );ldd
            (layer == "DGX"
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                DGXBBox= dbPointArrayOr(
                    pcCellView
                    list(expandBBox(
                            grow(
                                grow(AABBox "topBottom" DGXEncAASide1)   
                                "leftRight"
                                DGXEncAASide2
                            );grow
                        );expandBBox
                    );list
                    list(expandBBox(
                            grow(
                                grow(gateBBox "topBottom" DGXEncGateSide1)
                                "leftRight"
                                DGXEncGateSide2
                            );grow
                        );expandBBox
                    );list
                )
                dbCreateRect(
                    pcCellView
                    list(layer "drawing")
                    pointsToBBox(car(DGXBBox))
                    
                );dbCreateRect
            );DGX
            (layer == "KGX"
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                KGXBBox= dbPointArrayOr(
                    pcCellView
                    list(expandBBox(
                            grow(
                                grow(AABBox "topBottom" KGXEncAASide1)   
                                "leftRight"
                                KGXEncAASide2
                            );grow
                        );expandBBox
                    );list
                    list(expandBBox(
                            grow(
                                grow(gateBBox "topBottom" KGXE
                                "leftRight"
                                KGXEncGateSide2
                            );grow
                        );expandBBox
                    );list
                )
                dbCreateRect(
                    pcCellView
                    list(layer "drawing")
                    pointsToBBox(car(KGXBBox))
                    
                );dbCreateRect
            );KGX
            (layer == "SGD"
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                SGDBBox= dbPointArrayOr(
                    pcCellView
                    list(expandBBox(
                            grow(
                                grow(AABBox "topBottom" SGDEncAASide1)   
                                "leftRight"
                                SGDEncAASide2
                            );grow
                        );expandBBox
                    );list
                    list(expandBBox(
                            grow(
                                grow(gateBBox "topBottom" SGDEncGateSide1)
                                "leftRight"
                                SGDEncGateSide2
                            );grow
                        );expandBBox
                    );list
                )
                dbCreateRect(
                    pcCellView
                    list(layer "drawing")
                    pointsToBBox(car(SGDBBox))
                    
                );dbCreateRect
            );SGD
            (layer == "NMR"
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                NMRBBox= dbPointArrayOr(
                    pcCellView
                    list(expandBBox(
                            grow(
                                grow(AABBox "topBottom" NMREncAASide1)   
                                "leftRight"
                                NMREncAASide2
                            );grow
                        );expandBBox
                    );list
                    list(expandBBox(
                            grow(
                                grow(gateBBox "topBottom" NMREncGateSide1)
                                "leftRight"
                                NMREncGateSide2
                            );grow
                        );expandBBox
                    );list
                )
                dbCreateRect(
                    pcCellView
                    list(layer "drawing")
                    pointsToBBox(car(NMRBBox))
                    
                );dbCreateRect
            );NMR
            (rexMatchp("^[NP]SD" layer)
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                dbCreateRect(
                    pcCellView
                    layer
                    grow(
                        grow(AABBox "topBottom" plusEncAASide1)   
                        "leftRight"
                        plusEncAASide2
                    );grow
                );dbCreateRect
            ); NSD/PSD
            (rexMatchp("^PC[NP]" layer)
                foreach(obj pcCellView~>shapes
                    when(obj~>lpp == list(layer "drawing")
                        dbDeleteObject(obj)
                    )
                );foreach
                dbCreateRect(
                    pcCellView
                    layer
                    grow(
                        grow(AABBox "topBottom" pcImpEncAASide1)   
                        "leftRight"
                        pcImpEncAASide2
                    );grow
                );dbCreateRect
            ); PCN/PCP
        );cond
    );foreach symmetry finish
));procedure



procedure(pointsToBBox(points)  ;;input is the rect four vertex, output is bBox
let((Xlist Ylist)
    Xlist = Ylist = list()
    foreach(point points
        Xlist = append1(Xlist car(point))
        Ylist = append1(Ylist cadr(point))
    )
    
    bBox = list(car(sort(Xlist 'lessp)):car(sort(Ylist 'lessp)) car(last(sort(Xlist 'lessp))):car(last(sort(Ylist 'lessp))))
));procedure

procedure(getBBoxFromLayer(cv lpp @rest args)       ;; input is cellView and lpp, lpps
let((returnList bBox bBoxY)
    bBoxX = list()
    bBoxY = list()
    foreach(shape cv~>shapes
        when(shape~>lpp == lpp || member(shape~>lpp args) 
            bBoxX = append1(bBoxX xCoord(lowerLeft(shape~>bBox)))
            bBoxX = append1(bBoxX xCoord(upperRight(shape~>bBox)))

            bBoxY = append1(bBoxY yCoord(lowerLeft(shape~>bBox)))
            bBoxY = append1(bBoxY yCoord(upperRight(shape~>bBox)))
        );when  
    );foreach
    returnList = list(car(sort(bBoxX 'lessp)):car(sort(bBoxY 'lessp)) car(last(sort(bBoxX 'lessp))):car(last(sort(bBoxY 'lessp))))
))

procedure(copyGroup(groupId cv transform objList)   ;; input is group cellView transform, output is all copy generate object
prog((groupMem)
    
    foreach(groupMem groupId~>objects
        if(groupMem~>objType == "group" then
            objList = copyGroup(groupMem cv transform objList)    
        else
            objList = append1(objList dbCopyShape(
                groupMem
                cv
                transform
            ));dbCopyShape
            
        );if
    );foreach
    return(objList)
));procedure


procedure(expandBBox(bBox)          ;; input is bBox, output is 4 points of bBox vertex
let((LLX LLY URX URY returnList lowerLeft upperRight)
    when(isBBox(bBox)
        lowerLeft = lowerLeft(bBox)
        upperRight = upperRight(bBox)
        returnBox = list()

        LLX = car(lowerLeft)
        LLY = cadr(lowerLeft)
        URX = car(upperRight)
        URY = cadr(upperRight)
        returnList = list(LLX:LLY URX:LLY URX:URY LLX:URY)       
    )
    returnList
))

procedure(grow(bBox orient value)       ;; input is bBox, output is a new bBox with size original bBox in orient by value
let((returnBox LLX LLY URX URY)
    when(isBBox(bBox)
        lowerLeft = lowerLeft(bBox)
        upperRight = upperRight(bBox)
        returnBox = list()

        LLX = car(lowerLeft)
        LLY = cadr(lowerLeft)
        URX = car(upperRight)
        URY = cadr(upperRight)
        case(orient
            ("top"
                URY = URY + value
                returnBox = list(lowerLeft URX:URY)
            )
            ("bot"
                LLY = LLY - value
                returnBox = list(LLX: LLY upperRight)
            )

            ("right"
                URX = URX + value
                returnBox = list(lowerLeft URX:URY)
            )
            ("left"
                LLX = LLX - value
                returnBox = list(LLX: LLY upperRight)
            )
            ("leftRight"
                LLX = LLX - value
                URX = URX + value

                returnBox = list(LLX: LLY URX:URY)
            )
            ("topBottom"
                LLY = LLY - value
                URY = URY + value

                returnBox = list(LLX: LLY URX:URY)
            )

        );case
        returnBox
    )
));procedure


procedure(growEdge(bBox orient value)       ;; growEdge only output edge generate bBox
let((returnBox)
    lowerLeft = lowerLeft(bBox)
    upperRight = upperRight(bBox)

    LLX = car(lowerLeft)
    LLY = cadr(lowerLeft)
    URX = car(upperRight)
    URY = cadr(upperRight)

    returnBox = list()
    case(orient
        ("top"
            newURY = URY + value
            returnBox = list(LLX:URY URX:newURY)
        )
        ("bot"
            newLLY = LLY - value
            returnBox = list(LLX: newLLY URX:LLY)
        )

        ("right"
            newURX = URX + value
            returnBox = list(URX:LLY newURX:URY)
        )
        ("left"
            newLLX = LLX - value
            returnBox = list(newLLX:LLY LLX:URY)
        )

    );case
    returnBox
));procedure





procedure(getBBoxFromObjList(objList)
let((LLXlist LLYlist URXlist URYlist LLX LLY URX URY returnBBox)
    
    LLXlist = list()
    LLYlist = list()
    
    URXlist = list()
    URYlist = list()
    foreach(obj objList
        LLXlist = append1(LLXlist leftEdge(obj))
        LLYlist = append1(LLYlist bottomEdge(obj))

        URXlist = append1(URXlist rightEdge(obj))
        URYlist = append1(URYlist topEdge(obj))
    );foreach

    LLX = car(sort(LLXlist 'lessp))
    LLY = car(sort(LLYlist 'lessp))

    URX = car(last(sort(URXlist 'lessp)))
    URY = car(last(sort(URYlist 'lessp)))

    returnBBox  = list(LLX:LLY URX:URY)
    returnBBox    
))

procedure(isLayout()
let((result)
    result = nil
    if(deGetCellView()->cellViewType == "maskLayout" then
        result =  t
    )
    result
))

procedure(resCallback()
let((w l rsh r)
    rsh = cdfgData->rsh->defValue
    
    w = cdfgData->w->value
    w = stringp(w) && stringToFloat(w) || w
    
    l = cdfgData->l->value
    l = stringp(l) && stringToFloat(l) || l
    
    r = fixFolatToGridRound((l / w) * rsh)
    cdfgData->r->value = r
))

procedure(stringToFloat(str)
let((value)
    if(rexMatchp(".*n" str) then
        value = atof(str)*1000.0
    else
        value = atof(str)
    )
    value
))

procedure(fixFolatToGridRound(value)
let((GRID) 
    GRID  = 1000.0 
    value = round(value * GRID)/GRID
    value
))

procedure(fixFolatToGridFloor(value)
let((GRID)
    GRID  = 1000.0 
    if(lessp(value 0.0) then
        value = abs(value)
        value = floor(value * GRID)/GRID
        value = -1.0 * value 
    else
        value = floor(value * GRID)/GRID
    )
    value
))

procedure(fixFolatToGridCeiling(value)
let( (GRID)
    GRID  = 1000.0
    if(lessp(value 0.0) then
        value = abs(value)
        value = ceiling(value * GRID)/GRID
        value = -1.0 * value 
    else
        value = ceiling(value * GRID)/GRID
    )
    value
))

procedure(tegMosCB(param)
let(()
    case(param
        ('limiter
            when(cdfgData->limiter->value
                cdfgData->PCDefine->value = nil
                ;cdfgData->sourceContToPCSpace->value = cdfgData->sourceContToPCSpace->defValue
                ;cdfgData->drainContToPCSpace->value = cdfgData->drainContToPCSpace->defValue
            )
        
        );limiter
        ('PCDefine
            when(!cdfgData->PCDefine->value
                cdfgData->sourceContToPCSpace->value = cdfgData->sourceContToPCSpace->defValue
                cdfgData->drainContToPCSpace->value = cdfgData->drainContToPCSpace->defValue
                cdfgData->leftAAEncPCValue->value = cdfgData->leftAAEncPCValue->defValue
                cdfgData->rightAAEncPCValue->value = cdfgData->rightAAEncPCValue->defValue
                cdfgData->AAEncSourcePCTopDefine->value = cdfgData->AAEncSourcePCTopDefine->defValue
                cdfgData->AAEncSourcePCBotDefine->value = cdfgData->AAEncSourcePCBotDefine->defValue
                cdfgData->AAEncDrainPCTopDefine->value = cdfgData->AAEncDrainPCTopDefine->defValue
                cdfgData->AAEncDrainPCBotDefine->value = cdfgData->AAEncDrainPCBotDefine->defValue
            )
        
        );pcDefine
        ('DummyMOSDefine
            if(!cdfgData->DummyMOSDefine->value then
                cdfgData->createLeftDummyMOS->value = cdfgData->createLeftDummyMOS->defValue
                cdfgData->createRightDummyMOS->value = cdfgData->createRightDummyMOS->defValue
                cdfgData->createTopBottomDummyMOS->value = cdfgData->createTopBottomDummyMOS->defValue
            else
                cdfgData->createLeftDummyMOS->value      = t
                cdfgData->createRightDummyMOS->value     = t
                cdfgData->createTopBottomDummyMOS->value = t
            )
        
        );DummyMOSDefine


    
    
    );case
));procedure

procedure(setCellViewOrigin(pcCellView)         ;; set the all origin to 0:0
let((shapeIds instIds mosaicIds viaIds viaInstIds prb pcCellViewbBox xyOrigin)

    shapeIds=pcCellView~>shapes
    instIds=setof(x pcCellView~>instances x~>objType=="inst")
    mosaicIds=setof(x pcCellView~>instances x~>objType=="mosaic")
    viaIds=pcCellView~>vias
    viaInstIds=append(instIds viaIds)

    cond(
        (prb=pcCellView~>prBoundary
           pcCellViewbBox=prb~>bBox
        ) ;OA prBoundary
        ;(prb=car(setof(x pcCellView~>shapes pcreMatchp("prBoundary|OUTLINE" x~>layerName)))
        ;   pcCellViewbBox=prb~>bBox
        ;) ;prBoundary or OUTLINE shape
        (t
           pcCellViewbBox=pcCellView~>bBox
        ) ;use cellview bBox
     ) ;cond

    ;; Change lowerLeft(pcCellViewbBox) to centerBox(pcCellViewbBox) in the below section, to move the origin to the center of the bounding box.
    ;; Change 0:0 to some value in rodSubPoints call if you want to give an offset.
    xyOrigin = rodSubPoints(0:0 centerBox(pcCellViewbBox))

    when(prb
      dbMoveFig(prb pcCellView list(xyOrigin "R0"))
    );when

    when(shapeIds
        foreach(shp shapeIds
          dbMoveFig(shp pcCellView list(xyOrigin "R0"))
        );foreach
    );when

    when(viaInstIds
    ;; obj~>orient
        foreach(obj viaInstIds
          dbMoveFig(obj pcCellView list(xyOrigin "R0"))
        );foreach
    );when

    when(mosaicIds
        ;; car(obj~>tileArray)
        foreach(mosaic mosaicIds
          dbMoveFig(mosaic pcCellView list(xyOrigin "R0"))
        );foreach
    );when
    ;---------------------------------------------------
));procedure

procedure(getAllObjFromGroup(group @optional (objList nil))
prog(()
    foreach(obj group~>objects
        if(obj~>objType == "group" then 
            objList = getAllObjFromGroup(obj objList) 
        else 
            objList = cons(obj objList)
        );if
    );foreach
    objList = remq(nil objList)
    return(objList)
));procedure



                          
