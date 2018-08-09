<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eeab98b2-dd72-4d15-9a9b-388628d26ca8(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="001b2375-3bd5-4d5e-9958-6b3f62dc8548" name="com.mbeddr.formal.nusmv" version="0" />
    <use id="b0b65429-cd22-4e2a-83e7-cd58bc6dd72f" name="com.mbeddr.formal.base.expressions" version="0" />
    <use id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil" version="1" />
    <use id="c0e6afd4-e20f-4e33-9970-004cf26b9bf6" name="com.mbeddr.formal.nusmv.ext" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="vzqj" ref="r:27bd828c-1d2d-479d-bb43-b193c82b9c29(com.mbeddr.formal.nusmv.cbd.structure)" />
    <import index="rvcq" ref="r:777f3caf-3907-41cd-9826-6ba1c5a1e8b9(com.mbeddr.formal.nusmv.arch.structure)" />
    <import index="gioj" ref="r:a6dee7e9-c79f-4293-b631-7c366a8877df(com.mbeddr.formal.nusmv.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="2w9c" ref="r:c739f65b-a928-4edd-a4a7-2d6f55d0bf39(com.mbeddr.formal.nusmv.cbd.flatten.util)" />
    <import index="b19z" ref="r:11a68676-9d63-4e1c-b920-59aefe77def3(com.mbeddr.formal.base.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil">
      <concept id="6451706574537082687" name="com.mbeddr.mpsutil.blutil.structure.ShortStaticMethodCall" flags="ng" index="NRdvd" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1219952072943" name="jetbrains.mps.lang.generator.structure.DropRootRule" flags="lg" index="aNPBN">
        <reference id="1219952338328" name="applicableConcept" index="aOQi4" />
        <child id="1219952317655" name="conditionFunction" index="aOLnb" />
      </concept>
      <concept id="1219952151850" name="jetbrains.mps.lang.generator.structure.DropRootRule_Condition" flags="in" index="aO8KQ" />
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1219952894531" name="dropRootRule" index="aQYdv" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1170725621272" name="jetbrains.mps.lang.generator.structure.MapSrcMacro_MapperFunction" flags="in" index="2kFOW8" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1133037731736" name="jetbrains.mps.lang.generator.structure.MapSrcListMacro" flags="ln" index="3ejVUv">
        <child id="1168291362368" name="sourceNodesQuery" index="3_Rtg" />
        <child id="1170871384825" name="mapperFunction" index="2tnRJD" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="001b2375-3bd5-4d5e-9958-6b3f62dc8548" name="com.mbeddr.formal.nusmv">
      <concept id="2295987781863215983" name="com.mbeddr.formal.nusmv.structure.NotEqualsExpression" flags="ng" index="dheZm" />
      <concept id="2295987781863305066" name="com.mbeddr.formal.nusmv.structure.IntervalType" flags="ng" index="dhpfj">
        <child id="2295987781863305067" name="left" index="dhpfi" />
        <child id="2295987781863305070" name="right" index="dhpfn" />
      </concept>
      <concept id="2707707741262126533" name="com.mbeddr.formal.nusmv.structure.EmptyModuleContent" flags="ng" index="s4Ewt" />
      <concept id="8004696212664077689" name="com.mbeddr.formal.nusmv.structure.AbstractSpecSection" flags="ng" index="tPUAM">
        <child id="8482728081216646944" name="expr" index="1yBDGv" />
      </concept>
      <concept id="7842584090743386548" name="com.mbeddr.formal.nusmv.structure.VariableDeclaration" flags="ng" index="2Hdskp">
        <child id="7842584090743387019" name="type" index="2HdssA" />
      </concept>
      <concept id="7842584090743385197" name="com.mbeddr.formal.nusmv.structure.ModuleDeclaration" flags="ng" index="2Hdtz0">
        <child id="7842584090743586905" name="content" index="2HcbjO" />
        <child id="7842584090743385207" name="params" index="2Hdtzq" />
      </concept>
      <concept id="7842584090743385206" name="com.mbeddr.formal.nusmv.structure.ParameterDeclaration" flags="ng" index="2Hdtzr" />
      <concept id="7842584090743385045" name="com.mbeddr.formal.nusmv.structure.System" flags="ng" index="2HdtXS">
        <child id="7842584090743643493" name="content" index="2HcuB8" />
      </concept>
      <concept id="7842584090743943170" name="com.mbeddr.formal.nusmv.structure.VariableRef" flags="ng" index="2He$iJ">
        <reference id="7842584090743943171" name="var" index="2He$iI" />
      </concept>
      <concept id="7842584090743880823" name="com.mbeddr.formal.nusmv.structure.VariablesSection" flags="ng" index="2Hfkzq">
        <child id="7842584090743880932" name="vars" index="2Hfkx9" />
      </concept>
      <concept id="9133754867501306922" name="com.mbeddr.formal.nusmv.structure.LTLSpecSection" flags="ng" index="2Sa8A2" />
      <concept id="6447909589225766051" name="com.mbeddr.formal.nusmv.structure.EmptySystemContent" flags="ng" index="2SQmWS" />
      <concept id="1989356068342053581" name="com.mbeddr.formal.nusmv.structure.DefineSection" flags="ng" index="32O2o0">
        <child id="1989356068342053586" name="definitions" index="32O2ov" />
      </concept>
      <concept id="1989356068341979925" name="com.mbeddr.formal.nusmv.structure.ParameterRef" flags="ng" index="32Ogvo">
        <reference id="1989356068341979926" name="param" index="32Ogvr" />
      </concept>
      <concept id="5536191589037395463" name="com.mbeddr.formal.nusmv.structure.EmptyVariableDeclaration" flags="ng" index="1tKcVG" />
      <concept id="8482728081216646940" name="com.mbeddr.formal.nusmv.structure.SpecSection" flags="ng" index="1yBDGz" />
      <concept id="8482728081215818225" name="com.mbeddr.formal.nusmv.structure.TrueLiteral" flags="ng" index="1yCjRe" />
      <concept id="8482728081213209469" name="com.mbeddr.formal.nusmv.structure.ModuleType" flags="ng" index="1zigX2">
        <reference id="8482728081213209470" name="module" index="1zigX1" />
        <child id="8482728081213209473" name="actuals" index="1zigYY" />
      </concept>
      <concept id="8482728081211544281" name="com.mbeddr.formal.nusmv.structure.Definition" flags="ng" index="1zoerA">
        <child id="8482728081211544406" name="rhs" index="1zoetD" />
      </concept>
    </language>
    <language id="b0b65429-cd22-4e2a-83e7-cd58bc6dd72f" name="com.mbeddr.formal.base.expressions">
      <concept id="7842584090744231473" name="com.mbeddr.formal.base.expressions.structure.BinaryExpression" flags="ng" index="2H9Ias">
        <child id="7842584090744231480" name="right" index="2H9Ial" />
        <child id="7842584090744231474" name="left" index="2H9Iav" />
      </concept>
      <concept id="7842584090745356592" name="com.mbeddr.formal.base.expressions.structure.NumberLiteral" flags="ng" index="2IPVmt">
        <property id="7842584090745356593" name="value" index="2IPVms" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="c0e6afd4-e20f-4e33-9970-004cf26b9bf6" name="com.mbeddr.formal.nusmv.ext">
      <concept id="9066112305502203260" name="com.mbeddr.formal.nusmv.ext.structure.NaryAndExpression" flags="ng" index="3U$e1B">
        <child id="9066112305502203261" name="expressions" index="3U$e1A" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="7RhjhI7fDJR">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="1NcemxVvT5Z" role="3acgRq">
      <ref role="30HIoZ" to="vzqj:7RhjhI7$li2" resolve="PortRef" />
      <node concept="1Koe21" id="1NcemxVvTzT" role="1lVwrX">
        <node concept="2Hdtz0" id="1NcemxVvTzZ" role="1Koe22">
          <property role="TrG5h" value="m" />
          <node concept="2Hdtzr" id="1NcemxVvT$5" role="2Hdtzq">
            <property role="TrG5h" value="par" />
          </node>
          <node concept="1yBDGz" id="1NcemxVvT$l" role="2HcbjO">
            <node concept="dheZm" id="1NcemxVvT$_" role="1yBDGv">
              <node concept="32Ogvo" id="1NcemxVvT$v" role="2H9Iav">
                <ref role="32Ogvr" node="1NcemxVvT$5" resolve="par" />
                <node concept="raruj" id="1NcemxVvT_9" role="lGtFl" />
                <node concept="1ZhdrF" id="1NcemxVvT_b" role="lGtFl">
                  <property role="P3scX" value="001b2375-3bd5-4d5e-9958-6b3f62dc8548/1989356068341979925/1989356068341979926" />
                  <property role="2qtEX8" value="param" />
                  <node concept="3$xsQk" id="1NcemxVvT_c" role="3$ytzL">
                    <node concept="3clFbS" id="1NcemxVvT_d" role="2VODD2">
                      <node concept="3clFbF" id="1NcemxVvTA0" role="3cqZAp">
                        <node concept="2OqwBi" id="1NcemxVvUJG" role="3clFbG">
                          <node concept="2OqwBi" id="1NcemxVvTP1" role="2Oq$k0">
                            <node concept="30H73N" id="1NcemxVvT_Z" role="2Oq$k0" />
                            <node concept="3TrEf2" id="1NcemxVvUjD" role="2OqNvi">
                              <ref role="3Tt5mk" to="vzqj:7RhjhI7$li3" resolve="port" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1NcemxVvUYN" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2IPVmt" id="1NcemxVvT_4" role="2H9Ial">
                <property role="2IPVms" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="aNPBN" id="1NcemxVv_j9" role="aQYdv">
      <ref role="aOQi4" to="gioj:6NmtaR1SUJl" resolve="System" />
      <node concept="aO8KQ" id="1NcemxVv_wB" role="aOLnb">
        <node concept="3clFbS" id="1NcemxVv_wC" role="2VODD2">
          <node concept="3clFbF" id="1NcemxVv_BV" role="3cqZAp">
            <node concept="2OqwBi" id="1NcemxVvEwD" role="3clFbG">
              <node concept="2OqwBi" id="1NcemxVv_PV" role="2Oq$k0">
                <node concept="30H73N" id="1NcemxVv_BU" role="2Oq$k0" />
                <node concept="2Rf3mk" id="1NcemxVvAkt" role="2OqNvi">
                  <node concept="1xMEDy" id="1NcemxVvAkv" role="1xVPHs">
                    <node concept="chp4Y" id="1NcemxVvADX" role="ri$Ld">
                      <ref role="cht4Q" to="vzqj:7RhjhI7$lgU" resolve="ComponentAssembly" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="1NcemxVvL8h" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="7RhjhI7hJ_9" role="3lj3bC">
      <ref role="3lhOvi" node="7RhjhI7iPN7" resolve="flattened_system" />
      <ref role="30HIoZ" to="vzqj:7RhjhI7$lgU" resolve="ComponentAssembly" />
      <node concept="30G5F_" id="1NcemxVvsoT" role="30HLyM">
        <node concept="3clFbS" id="1NcemxVvsoU" role="2VODD2">
          <node concept="3clFbJ" id="1NcemxVvu6X" role="3cqZAp">
            <node concept="3clFbS" id="1NcemxVvu6Z" role="3clFbx">
              <node concept="3clFbF" id="1NcemxVvx4Z" role="3cqZAp">
                <node concept="2OqwBi" id="1NcemxVvxOs" role="3clFbG">
                  <node concept="2OqwBi" id="1NcemxVvx51" role="2Oq$k0">
                    <node concept="30H73N" id="1NcemxVvx52" role="2Oq$k0" />
                    <node concept="3CFZ6_" id="1NcemxVvx53" role="2OqNvi">
                      <node concept="3CFYIy" id="1NcemxVvx54" role="3CFYIz">
                        <ref role="3CFYIx" to="b19z:3YQnHt0gBu" resolve="CurrentSimulationValueAnnotation" />
                      </node>
                    </node>
                  </node>
                  <node concept="zfrQC" id="1NcemxVvyNS" role="2OqNvi" />
                </node>
              </node>
              <node concept="3cpWs6" id="1NcemxVvvu1" role="3cqZAp">
                <node concept="3clFbT" id="1NcemxVvvVh" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1NcemxVvuCv" role="3clFbw">
              <node concept="2OqwBi" id="1NcemxVvujx" role="2Oq$k0">
                <node concept="30H73N" id="1NcemxVvujy" role="2Oq$k0" />
                <node concept="3CFZ6_" id="1NcemxVvujz" role="2OqNvi">
                  <node concept="3CFYIy" id="1NcemxVvuj$" role="3CFYIz">
                    <ref role="3CFYIx" to="b19z:3YQnHt0gBu" resolve="CurrentSimulationValueAnnotation" />
                  </node>
                </node>
              </node>
              <node concept="3w_OXm" id="1NcemxVvvfr" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="1NcemxVv$1s" role="3cqZAp">
            <node concept="3clFbT" id="1NcemxVv$1r" role="3clFbG">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2HdtXS" id="7RhjhI7iPN7">
    <property role="TrG5h" value="flattened_system" />
    <node concept="2Hdtz0" id="7RhjhI7iS5e" role="2HcuB8">
      <property role="TrG5h" value="Flattened" />
      <node concept="2Hfkzq" id="7RhjhI7iS5f" role="2HcbjO">
        <node concept="2Hdskp" id="7RhjhI7iS5g" role="2Hfkx9">
          <property role="TrG5h" value="ports" />
          <node concept="dhpfj" id="7RhjhI7iS5h" role="2HdssA">
            <node concept="2IPVmt" id="7RhjhI7iS5i" role="dhpfi">
              <property role="2IPVms" value="-100" />
            </node>
            <node concept="2IPVmt" id="7RhjhI7iS5j" role="dhpfn">
              <property role="2IPVms" value="100" />
            </node>
          </node>
          <node concept="3ejVUv" id="7RhjhI7iS5k" role="lGtFl">
            <node concept="3JmXsc" id="7RhjhI7iS5l" role="3_Rtg">
              <node concept="3clFbS" id="7RhjhI7iS5m" role="2VODD2">
                <node concept="3clFbF" id="1NcemxUMJRK" role="3cqZAp">
                  <node concept="NRdvd" id="1NcemxUMLpE" role="3clFbG">
                    <ref role="1Pybhc" to="2w9c:1NcemxUMb15" resolve="AGArchitecturePortsFlatteningUtils" />
                    <ref role="37wK5l" to="2w9c:1NcemxUMb17" resolve="collectVariables4FlattenedPorts" />
                    <node concept="30H73N" id="1NcemxUMLpF" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2kFOW8" id="7RhjhI7iS5q" role="2tnRJD">
              <node concept="3clFbS" id="7RhjhI7iS5r" role="2VODD2">
                <node concept="3clFbF" id="7RhjhI7iS5s" role="3cqZAp">
                  <node concept="30H73N" id="7RhjhI7iS5t" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1tKcVG" id="7RhjhI7y2LZ" role="2Hfkx9" />
        <node concept="2Hdskp" id="7RhjhI7y37j" role="2Hfkx9">
          <property role="TrG5h" value="output" />
          <node concept="dhpfj" id="7RhjhI7y3i9" role="2HdssA">
            <node concept="2IPVmt" id="7RhjhI7y3i8" role="dhpfi">
              <property role="2IPVms" value="-100" />
            </node>
            <node concept="2IPVmt" id="7RhjhI7y3j0" role="dhpfn">
              <property role="2IPVms" value="100" />
            </node>
          </node>
          <node concept="3ejVUv" id="1NcemxUMAHq" role="lGtFl">
            <node concept="3JmXsc" id="1NcemxUMAH$" role="3_Rtg">
              <node concept="3clFbS" id="1NcemxUMAHI" role="2VODD2">
                <node concept="3clFbF" id="1NcemxUMAYv" role="3cqZAp">
                  <node concept="2OqwBi" id="1NcemxUMBq3" role="3clFbG">
                    <node concept="30H73N" id="1NcemxUMAYu" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1NcemxUMCzq" role="2OqNvi">
                      <ref role="3TtcxE" to="vzqj:7RhjhI7zUXr" resolve="outputs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2kFOW8" id="1NcemxUMCVw" role="2tnRJD">
              <node concept="3clFbS" id="1NcemxUMCVx" role="2VODD2">
                <node concept="3clFbF" id="1NcemxUMDiZ" role="3cqZAp">
                  <node concept="2pJPEk" id="1NcemxUMDiX" role="3clFbG">
                    <node concept="2pJPED" id="1NcemxUMDmA" role="2pJPEn">
                      <ref role="2pJxaS" to="gioj:6NmtaR1SV6O" resolve="VariableDeclaration" />
                      <node concept="2pJxcG" id="1NcemxUMDrb" role="2pJxcM">
                        <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                        <node concept="2OqwBi" id="1NcemxUMDLP" role="2pJxcZ">
                          <node concept="30H73N" id="1NcemxUMD$$" role="2Oq$k0" />
                          <node concept="3TrcHB" id="1NcemxUME8a" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="2pIpSj" id="1NcemxUMErj" role="2pJxcM">
                        <ref role="2pIpSl" to="gioj:6NmtaR1SVeb" resolve="type" />
                        <node concept="36biLy" id="1NcemxUMEyp" role="2pJxcZ">
                          <node concept="2OqwBi" id="1NcemxUMGoy" role="36biLW">
                            <node concept="2OqwBi" id="1NcemxUMERr" role="2Oq$k0">
                              <node concept="30H73N" id="1NcemxUMEDr" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1NcemxUMFI2" role="2OqNvi">
                                <ref role="3Tt5mk" to="vzqj:7RhjhI7zUWr" resolve="type" />
                              </node>
                            </node>
                            <node concept="1$rogu" id="1NcemxUMHza" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="32O2o0" id="7RhjhI7iS5u" role="2HcbjO">
        <node concept="1zoerA" id="7RhjhI7iS5v" role="32O2ov">
          <property role="TrG5h" value="arch_wiring" />
          <node concept="3U$e1B" id="7RhjhI7iS5w" role="1zoetD">
            <node concept="1yCjRe" id="7RhjhI7iS5x" role="3U$e1A">
              <node concept="2b32R4" id="7RhjhI7iS5y" role="lGtFl">
                <node concept="3JmXsc" id="7RhjhI7iS5z" role="2P8S$">
                  <node concept="3clFbS" id="7RhjhI7iS5$" role="2VODD2">
                    <node concept="3clFbF" id="1NcemxVn0bH" role="3cqZAp">
                      <node concept="NRdvd" id="1NcemxVn1fR" role="3clFbG">
                        <ref role="1Pybhc" to="2w9c:1NcemxUMb3F" resolve="AGArchitectureWiringUtils" />
                        <ref role="37wK5l" to="2w9c:1NcemxUMb3H" resolve="collectPortsWiringEqualities" />
                        <node concept="30H73N" id="1NcemxVn1fS" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="7RhjhI7zubA" role="lGtFl">
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <property role="2qtEX9" value="name" />
            <node concept="3zFVjK" id="7RhjhI7zubB" role="3zH0cK">
              <node concept="3clFbS" id="7RhjhI7zubC" role="2VODD2">
                <node concept="3clFbF" id="7RhjhI7zupX" role="3cqZAp">
                  <node concept="10M0yZ" id="1NcemxVmYSh" role="3clFbG">
                    <ref role="3cqZAo" to="2w9c:1NcemxUMb0_" resolve="ARCH_WIRING" />
                    <ref role="1PxDUh" to="2w9c:1NcemxUMb0z" resolve="AGArchitectureFlatteningNamingUtils" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="s4Ewt" id="7RhjhI7mKOF" role="2HcbjO" />
      <node concept="17Uvod" id="7RhjhI7iS5C" role="lGtFl">
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <property role="2qtEX9" value="name" />
        <node concept="3zFVjK" id="7RhjhI7iS5D" role="3zH0cK">
          <node concept="3clFbS" id="7RhjhI7iS5E" role="2VODD2">
            <node concept="3clFbF" id="1NcemxUMw11" role="3cqZAp">
              <node concept="NRdvd" id="1NcemxUMwJx" role="3clFbG">
                <ref role="1Pybhc" to="2w9c:1NcemxUMb0z" resolve="AGArchitectureFlatteningNamingUtils" />
                <ref role="37wK5l" to="2w9c:1NcemxUMb0D" resolve="nameOfFlattenedModule" />
                <node concept="30H73N" id="1NcemxUMwJy" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Hdtzr" id="7RhjhI7iS5I" role="2Hdtzq">
        <property role="TrG5h" value="input" />
        <node concept="3ejVUv" id="1NcemxUM$fe" role="lGtFl">
          <node concept="3JmXsc" id="1NcemxUM$fg" role="3_Rtg">
            <node concept="3clFbS" id="1NcemxUM$fi" role="2VODD2">
              <node concept="3clFbF" id="1NcemxUM$kb" role="3cqZAp">
                <node concept="2OqwBi" id="1NcemxUM$_N" role="3clFbG">
                  <node concept="30H73N" id="1NcemxUM$ka" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="1NcemxUM_nP" role="2OqNvi">
                    <ref role="3TtcxE" to="vzqj:7RhjhI7zUXd" resolve="inputs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2kFOW8" id="1NcemxUM_ws" role="2tnRJD">
            <node concept="3clFbS" id="1NcemxUM_wt" role="2VODD2">
              <node concept="3clFbF" id="1NcemxUM_Gi" role="3cqZAp">
                <node concept="2pJPEk" id="1NcemxUM_Gg" role="3clFbG">
                  <node concept="2pJPED" id="1NcemxUM_JT" role="2pJPEn">
                    <ref role="2pJxaS" to="gioj:6NmtaR1SULQ" resolve="ParameterDeclaration" />
                    <node concept="2pJxcG" id="1NcemxUM_O0" role="2pJxcM">
                      <ref role="2pJxcJ" to="tpck:h0TrG11" resolve="name" />
                      <node concept="2OqwBi" id="1NcemxUMAaC" role="2pJxcZ">
                        <node concept="30H73N" id="1NcemxUM_Xo" role="2Oq$k0" />
                        <node concept="3TrcHB" id="1NcemxUMAwW" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Sa8A2" id="7RhjhI7zL9u" role="2HcbjO">
        <node concept="1yCjRe" id="7RhjhI7zLUI" role="1yBDGv">
          <node concept="29HgVG" id="7RhjhI7zN8I" role="lGtFl">
            <node concept="3NFfHV" id="7RhjhI7zN8P" role="3NFExx">
              <node concept="3clFbS" id="7RhjhI7zN8Q" role="2VODD2">
                <node concept="3clFbF" id="7RhjhI7zNcm" role="3cqZAp">
                  <node concept="30H73N" id="7RhjhI7zNcl" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="7RhjhI7zMwy" role="lGtFl">
          <node concept="3JmXsc" id="7RhjhI7zMw_" role="3Jn$fo">
            <node concept="3clFbS" id="7RhjhI7zMwA" role="2VODD2">
              <node concept="3clFbF" id="1NcemxVnH5x" role="3cqZAp">
                <node concept="NRdvd" id="1NcemxVnIP2" role="3clFbG">
                  <ref role="1Pybhc" to="2w9c:1NcemxUMb6I" resolve="AGArchitectureVerificationConditionsUtils" />
                  <ref role="37wK5l" to="2w9c:1NcemxUMb6K" resolve="collectVerificationConditions" />
                  <node concept="30H73N" id="1NcemxVnIP3" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="7RhjhI7iS5Q" role="2HcuB8" />
    <node concept="2Hdtz0" id="7RhjhI7iS5R" role="2HcuB8">
      <property role="TrG5h" value="main" />
      <node concept="2Hfkzq" id="7RhjhI7iS5S" role="2HcbjO">
        <node concept="2Hdskp" id="7RhjhI7iS5T" role="2Hfkx9">
          <property role="TrG5h" value="input" />
          <node concept="dhpfj" id="7RhjhI7iS5U" role="2HdssA">
            <node concept="2IPVmt" id="7RhjhI7iS5V" role="dhpfi">
              <property role="2IPVms" value="-100" />
            </node>
            <node concept="2IPVmt" id="7RhjhI7iS5W" role="dhpfn">
              <property role="2IPVms" value="100" />
            </node>
            <node concept="29HgVG" id="1NcemxVuJl9" role="lGtFl">
              <node concept="3NFfHV" id="1NcemxVuJla" role="3NFExx">
                <node concept="3clFbS" id="1NcemxVuJlb" role="2VODD2">
                  <node concept="3clFbF" id="1NcemxVuJlh" role="3cqZAp">
                    <node concept="2OqwBi" id="1NcemxVuJlc" role="3clFbG">
                      <node concept="3TrEf2" id="1NcemxVuJlf" role="2OqNvi">
                        <ref role="3Tt5mk" to="vzqj:7RhjhI7zUWr" resolve="type" />
                      </node>
                      <node concept="30H73N" id="1NcemxVuJlg" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="1NcemxVuFUh" role="lGtFl">
            <node concept="3JmXsc" id="1NcemxVuFUp" role="3Jn$fo">
              <node concept="3clFbS" id="1NcemxVuFUx" role="2VODD2">
                <node concept="3clFbF" id="1NcemxVuGjm" role="3cqZAp">
                  <node concept="2OqwBi" id="1NcemxVuG$Y" role="3clFbG">
                    <node concept="30H73N" id="1NcemxVuGjl" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1NcemxVuHzX" role="2OqNvi">
                      <ref role="3TtcxE" to="vzqj:7RhjhI7zUXd" resolve="inputs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="1NcemxVuHRn" role="lGtFl">
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <property role="2qtEX9" value="name" />
            <node concept="3zFVjK" id="1NcemxVuHRo" role="3zH0cK">
              <node concept="3clFbS" id="1NcemxVuHRp" role="2VODD2">
                <node concept="3clFbF" id="1NcemxVuIpu" role="3cqZAp">
                  <node concept="2OqwBi" id="1NcemxVuICG" role="3clFbG">
                    <node concept="30H73N" id="1NcemxVuIpt" role="2Oq$k0" />
                    <node concept="3TrcHB" id="1NcemxVuJ3y" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Hdskp" id="7RhjhI7iS6b" role="2Hfkx9">
          <property role="TrG5h" value="flattened" />
          <node concept="1zigX2" id="7RhjhI7iS6c" role="2HdssA">
            <ref role="1zigX1" node="7RhjhI7iS5e" resolve="Flattened" />
            <node concept="2He$iJ" id="7RhjhI7iS6d" role="1zigYY">
              <ref role="2He$iI" node="7RhjhI7iS5T" resolve="input" />
              <node concept="3ejVUv" id="7RhjhI7iS6e" role="lGtFl">
                <node concept="3JmXsc" id="7RhjhI7iS6f" role="3_Rtg">
                  <node concept="3clFbS" id="7RhjhI7iS6g" role="2VODD2">
                    <node concept="3clFbF" id="7RhjhI7iS6h" role="3cqZAp">
                      <node concept="2OqwBi" id="7RhjhI7iS6i" role="3clFbG">
                        <node concept="30H73N" id="7RhjhI7iS6j" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="1NcemxVuOhv" role="2OqNvi">
                          <ref role="3TtcxE" to="vzqj:7RhjhI7zUXd" resolve="inputs" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1ZhdrF" id="7RhjhI7iS6l" role="lGtFl">
                <property role="P3scX" value="001b2375-3bd5-4d5e-9958-6b3f62dc8548/7842584090743943170/7842584090743943171" />
                <property role="2qtEX8" value="var" />
                <node concept="3$xsQk" id="7RhjhI7iS6m" role="3$ytzL">
                  <node concept="3clFbS" id="7RhjhI7iS6n" role="2VODD2">
                    <node concept="3clFbF" id="7RhjhI7iS6o" role="3cqZAp">
                      <node concept="2OqwBi" id="7RhjhI7iS6p" role="3clFbG">
                        <node concept="30H73N" id="7RhjhI7iS6q" role="2Oq$k0" />
                        <node concept="3TrcHB" id="7RhjhI7iS6r" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ZhdrF" id="7RhjhI7iS6s" role="lGtFl">
              <property role="P3scX" value="001b2375-3bd5-4d5e-9958-6b3f62dc8548/8482728081213209469/8482728081213209470" />
              <property role="2qtEX8" value="module" />
              <node concept="3$xsQk" id="7RhjhI7iS6t" role="3$ytzL">
                <node concept="3clFbS" id="7RhjhI7iS6u" role="2VODD2">
                  <node concept="3clFbF" id="1NcemxVuKCW" role="3cqZAp">
                    <node concept="NRdvd" id="1NcemxVuN5g" role="3clFbG">
                      <ref role="1Pybhc" to="2w9c:1NcemxUMb0z" resolve="AGArchitectureFlatteningNamingUtils" />
                      <ref role="37wK5l" to="2w9c:1NcemxUMb0D" resolve="nameOfFlattenedModule" />
                      <node concept="30H73N" id="1NcemxVuN5h" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="7RhjhI7iPN8" role="2HcuB8" />
    <node concept="n94m4" id="7RhjhI7iPN9" role="lGtFl">
      <ref role="n9lRv" to="vzqj:7RhjhI7$lgU" resolve="ComponentAssembly" />
    </node>
    <node concept="17Uvod" id="7RhjhI7iRET" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="7RhjhI7iREU" role="3zH0cK">
        <node concept="3clFbS" id="7RhjhI7iREV" role="2VODD2">
          <node concept="3clFbF" id="1NcemxUMuoY" role="3cqZAp">
            <node concept="NRdvd" id="1NcemxUMvur" role="3clFbG">
              <ref role="1Pybhc" to="2w9c:1NcemxUMb0z" resolve="AGArchitectureFlatteningNamingUtils" />
              <ref role="37wK5l" to="2w9c:1NcemxUMb0B" resolve="nameOfGeneratedSystem" />
              <node concept="30H73N" id="1NcemxUMvus" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>
