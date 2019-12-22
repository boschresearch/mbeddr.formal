<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:494edde9-979a-4c02-9a7e-480d4290ceeb(com.mbeddr.formal.safety.gsn.patterns.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="0" />
    <use id="f89904fb-9486-43a1-865e-5ad0375a8a88" name="de.itemis.mps.editor.bool" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="g35p" ref="r:53f7c624-e35c-46e0-a6cd-4bcccc2b91f5(com.mbeddr.formal.safety.gsn.editor)" />
    <import index="xnej" ref="r:bff9a19b-7e5d-44c3-8cfc-aec191022422(com.mbeddr.formal.base.editor)" />
    <import index="py52" ref="r:14bd9e1a-63cf-4fde-816f-1d68e4acbfba(com.mbeddr.formal.safety.gsn.structure)" />
    <import index="2qxf" ref="r:92bf1daa-4510-4ff1-a9b1-c695f68c3f1d(com.mbeddr.formal.safety.gsn.patterns.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tbr6" ref="r:6a005c26-87c0-43c4-8cf3-49ffba1099df(de.slisson.mps.richtext.behavior)" />
    <import index="cjwq" ref="r:7e1f4da1-19b3-4ceb-bcab-0237eb7a50b7(com.mbeddr.formal.safety.hara.structure)" implicit="true" />
    <import index="z27p" ref="r:9796df7f-5d01-4a46-b1e4-58be8e3ac472(com.mbeddr.formal.req.base.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="795210086017940429" name="jetbrains.mps.lang.editor.structure.ReadOnlyStyleClassItem" flags="lg" index="xShMh" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW">
        <child id="7033942394258392116" name="overridenEditorComponent" index="1PM95z" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="7033942394256351208" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference" flags="ng" index="1PE4EZ">
        <reference id="7033942394256351817" name="editorComponent" index="1PE7su" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram">
      <concept id="7464726264117677937" name="de.itemis.mps.editor.diagram.structure.ShapeReference" flags="ng" index="2xQOud">
        <reference id="7464726264117677938" name="shape" index="2xQOue" />
        <child id="3454709602159778495" name="parameterValues" index="1xbcaF" />
      </concept>
      <concept id="6237710625713195816" name="de.itemis.mps.editor.diagram.structure.CellModel_DiagramNode" flags="ng" index="2ZK4vF">
        <child id="7464726264117682823" name="shape" index="2xQQDV" />
        <child id="1315262826372527521" name="editor" index="1ytjkN" />
      </concept>
      <concept id="8587703283519920118" name="de.itemis.mps.editor.diagram.structure.ThisNodeExpression" flags="ng" index="1Pxb5l" />
    </language>
    <language id="f89904fb-9486-43a1-865e-5ad0375a8a88" name="de.itemis.mps.editor.bool">
      <concept id="4900677560559655527" name="de.itemis.mps.editor.bool.structure.CellModel_Checkbox" flags="sg" stub="416014060004381438" index="27S6Sx" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7bxPmtp7Bjo">
    <property role="3GE5qa" value="hazards" />
    <ref role="1XX52x" to="2qxf:7bxPmtp5iOT" resolve="ArgumentOverHazardsStrategyPattern" />
    <node concept="2ZK4vF" id="2ccN23oa2J4" role="2wV5jI">
      <node concept="3EZMnI" id="2ccN23oa2Km" role="1ytjkN">
        <node concept="3EZMnI" id="2ccN23oa2Kn" role="3EZMnx">
          <node concept="VPM3Z" id="2ccN23oa2Ko" role="3F10Kt" />
          <node concept="3F0ifn" id="2ccN23oa2Kp" role="3EZMnx">
            <property role="3F0ifm" value="Argument over Hazards Strategy:" />
            <ref role="1k5W1q" to="xnej:KwKRgpDZHZ" resolve="BaseLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="2ccN23oa2Kr" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="2ccN23oa2Kq" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRkQZ" id="2ccN23oa2Kt" role="2iSdaV" />
        <node concept="3F0ifn" id="7TjUbLQ5_SF" role="3EZMnx" />
        <node concept="3F1sOY" id="2ccN23oa2Ku" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        </node>
        <node concept="xShMh" id="4qaoH_Ik_H" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2xQOud" id="6wqyW4uJqun" role="2xQQDV">
        <ref role="2xQOue" to="g35p:7TjUbLQ9xzM" resolve="StrategyPolygon" />
        <node concept="1Pxb5l" id="6wqyW4uJqvk" role="1xbcaF" />
      </node>
    </node>
    <node concept="3EZMnI" id="2RlaC$Paj6A" role="6VMZX">
      <node concept="2iRkQZ" id="2RlaC$Paj6B" role="2iSdaV" />
      <node concept="PMmxH" id="2RlaC$Paj6C" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3F0ifn" id="2RlaC$Pa$Pg" role="3EZMnx" />
      <node concept="3EZMnI" id="2RlaC$Paj6D" role="3EZMnx">
        <node concept="l2Vlx" id="2RlaC$Paj6E" role="2iSdaV" />
        <node concept="3F0ifn" id="2RlaC$Paj6F" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="2RlaC$Paj6G" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TT" resolve="undeveloped" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1$M4_qbWcqw">
    <property role="3GE5qa" value="requirements" />
    <ref role="1XX52x" to="2qxf:1$M4_qbW4nS" resolve="ArgumentOverRequirementsStrategyPattern" />
    <node concept="2ZK4vF" id="1$M4_qbWcCK" role="2wV5jI">
      <node concept="3EZMnI" id="1$M4_qbWcCL" role="1ytjkN">
        <node concept="3EZMnI" id="1$M4_qbWcCM" role="3EZMnx">
          <node concept="VPM3Z" id="1$M4_qbWcCN" role="3F10Kt" />
          <node concept="3F0ifn" id="1$M4_qbWcCO" role="3EZMnx">
            <property role="3F0ifm" value="Argument over Requirements Strategy:" />
            <ref role="1k5W1q" to="xnej:KwKRgpDZHZ" resolve="BaseLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="1$M4_qbWcCQ" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="1$M4_qbWcCP" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRkQZ" id="1$M4_qbWcD1" role="2iSdaV" />
        <node concept="3F0ifn" id="1$M4_qbWcD2" role="3EZMnx" />
        <node concept="3F1sOY" id="1$M4_qbWcD3" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        </node>
        <node concept="xShMh" id="1$M4_qbWcDe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2xQOud" id="1$M4_qbWcDf" role="2xQQDV">
        <ref role="2xQOue" to="g35p:7TjUbLQ9xzM" resolve="StrategyPolygon" />
        <node concept="1Pxb5l" id="1$M4_qbWcDg" role="1xbcaF" />
      </node>
    </node>
    <node concept="3EZMnI" id="2rzNEUxPnPA" role="6VMZX">
      <node concept="2iRkQZ" id="2rzNEUxPnPB" role="2iSdaV" />
      <node concept="PMmxH" id="2rzNEUxPnPC" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3F0ifn" id="2rzNEUxPnPD" role="3EZMnx" />
      <node concept="3EZMnI" id="2rzNEUxPnPE" role="3EZMnx">
        <node concept="l2Vlx" id="2rzNEUxPnPF" role="2iSdaV" />
        <node concept="3F0ifn" id="2rzNEUxPnPG" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="2rzNEUxPnPH" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TT" resolve="undeveloped" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1$M4_qbWlM_">
    <property role="3GE5qa" value="requirements" />
    <ref role="1XX52x" to="2qxf:1$M4_qbWlBU" resolve="RequirementSatisfiedGoal" />
    <node concept="2ZK4vF" id="1$M4_qbWlMB" role="2wV5jI">
      <node concept="3EZMnI" id="1$M4_qbWlMC" role="1ytjkN">
        <node concept="3EZMnI" id="1$M4_qbWlMD" role="3EZMnx">
          <node concept="VPM3Z" id="1$M4_qbWlME" role="3F10Kt" />
          <node concept="3F0ifn" id="1$M4_qbWlMF" role="3EZMnx">
            <property role="3F0ifm" value="Requirement Satisfaction Goal:" />
            <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="1$M4_qbWlMH" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="1$M4_qbWlMG" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="1$M4_qbWlMQ" role="3EZMnx" />
        <node concept="3F1sOY" id="1$M4_qbWlMR" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        </node>
        <node concept="2iRkQZ" id="1$M4_qbWlN2" role="2iSdaV" />
        <node concept="xShMh" id="1$M4_qbWlN3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2xQOud" id="7TjUbLQaERb" role="2xQQDV">
        <ref role="2xQOue" to="g35p:7TjUbLQ8uDG" resolve="GoalRectangle" />
        <node concept="1Pxb5l" id="7TjUbLQaERj" role="1xbcaF" />
      </node>
    </node>
    <node concept="3EZMnI" id="1$M4_qbWmbV" role="6VMZX">
      <node concept="2iRkQZ" id="1$M4_qbWmbW" role="2iSdaV" />
      <node concept="PMmxH" id="1$M4_qbWmbX" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3F0ifn" id="1$M4_qbWmbY" role="3EZMnx" />
      <node concept="3EZMnI" id="7TjUbLQaL3h" role="3EZMnx">
        <node concept="l2Vlx" id="7TjUbLQaL3i" role="2iSdaV" />
        <node concept="3F0ifn" id="7TjUbLQaL3j" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="27S6Sx" id="7TjUbLQaL3k" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TR" resolve="undeveloped" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6rlO$dpLwN8">
    <ref role="1XX52x" to="2qxf:6rlO$dpKLnX" resolve="SafeSystemGoal" />
    <node concept="2ZK4vF" id="6rlO$dpLwNN" role="2wV5jI">
      <ref role="1k5W1q" to="g35p:65LrkjiZjs5" resolve="GSNShapeStyle" />
      <node concept="3EZMnI" id="6rlO$dpLwNO" role="1ytjkN">
        <node concept="3EZMnI" id="6rlO$dpLwNP" role="3EZMnx">
          <node concept="VPM3Z" id="6rlO$dpLwNQ" role="3F10Kt" />
          <node concept="3F0ifn" id="6rlO$dpLwNR" role="3EZMnx">
            <property role="3F0ifm" value="Safe System Goal: " />
            <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
          </node>
          <node concept="3F0A7n" id="65Lrkjj1iuF" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="l2Vlx" id="6rlO$dpLwNT" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="6rlO$dpLwO3" role="3EZMnx" />
        <node concept="3F1sOY" id="6rlO$dpLwO4" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
          <ref role="1k5W1q" to="g35p:65LrkjiZl64" resolve="GSNTextStyle" />
          <node concept="pkWqt" id="6rlO$dpLwO5" role="pqm2j">
            <node concept="3clFbS" id="6rlO$dpLwO6" role="2VODD2">
              <node concept="3clFbF" id="6rlO$dpLwO7" role="3cqZAp">
                <node concept="2OqwBi" id="6rlO$dpLwO8" role="3clFbG">
                  <node concept="2OqwBi" id="6rlO$dpLwO9" role="2Oq$k0">
                    <node concept="2OqwBi" id="6rlO$dpLwOa" role="2Oq$k0">
                      <node concept="pncrf" id="6rlO$dpLwOb" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6rlO$dpLwOc" role="2OqNvi">
                        <ref role="3Tt5mk" to="py52:3GRi4m$qYoV" resolve="text" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6rlO$dpLwOd" role="2OqNvi">
                      <ref role="37wK5l" to="tbr6:3Q5enzfMT4l" resolve="asTextString" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="6rlO$dpLwOe" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRkQZ" id="6rlO$dpLwOf" role="2iSdaV" />
        <node concept="xShMh" id="6rlO$dpLwOg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="2rzNEUxOoZo" role="6VMZX">
      <node concept="2iRkQZ" id="2rzNEUxOoZp" role="2iSdaV" />
      <node concept="PMmxH" id="2rzNEUxOoZq" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3F0ifn" id="2rzNEUxOoZr" role="3EZMnx" />
      <node concept="3EZMnI" id="2rzNEUxOoZs" role="3EZMnx">
        <node concept="l2Vlx" id="2rzNEUxOoZt" role="2iSdaV" />
        <node concept="3F0ifn" id="2rzNEUxOoZu" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="2rzNEUxOoZv" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TR" resolve="undeveloped" />
        </node>
      </node>
      <node concept="3F0ifn" id="2rzNEUxOoZw" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="6rlO$dpJSUC">
    <property role="3GE5qa" value="cbd" />
    <ref role="1XX52x" to="2qxf:6rlO$dpJSTC" resolve="CBDStrategy" />
    <node concept="2ZK4vF" id="6rlO$dpJT5w" role="2wV5jI">
      <ref role="1k5W1q" to="g35p:65LrkjiZjs5" resolve="GSNShapeStyle" />
      <node concept="3EZMnI" id="6rlO$dpJT5x" role="1ytjkN">
        <node concept="3EZMnI" id="6rlO$dpJT5y" role="3EZMnx">
          <node concept="VPM3Z" id="6rlO$dpJT5z" role="3F10Kt" />
          <node concept="3F0ifn" id="6rlO$dpJT5$" role="3EZMnx">
            <property role="3F0ifm" value="CBD Strategy:" />
            <ref role="1k5W1q" to="xnej:KwKRgpDZHZ" resolve="BaseLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="6rlO$dpJT5A" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="6rlO$dpNEX6" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6rlO$dpJUs$" role="3EZMnx" />
        <node concept="2iRkQZ" id="6rlO$dpJT5I" role="2iSdaV" />
        <node concept="3F1sOY" id="6rlO$dpJT5J" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
          <ref role="1k5W1q" to="g35p:65LrkjiZl64" resolve="GSNTextStyle" />
        </node>
        <node concept="xShMh" id="6rlO$dpJT5V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2xQOud" id="6rlO$dpJT5W" role="2xQQDV">
        <ref role="2xQOue" to="g35p:7TjUbLQ9xzM" resolve="StrategyPolygon" />
        <node concept="1Pxb5l" id="6rlO$dpJT5X" role="1xbcaF" />
      </node>
    </node>
    <node concept="3EZMnI" id="6rlO$dpKkRh" role="6VMZX">
      <node concept="2iRkQZ" id="6rlO$dpKkRi" role="2iSdaV" />
      <node concept="PMmxH" id="6rlO$dpKkRj" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3EZMnI" id="6rlO$dpKkRk" role="3EZMnx">
        <node concept="l2Vlx" id="6rlO$dpKkRl" role="2iSdaV" />
        <node concept="3F0ifn" id="6rlO$dpKkRm" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="6rlO$dpKkRn" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TT" resolve="undeveloped" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6rlO$dpLJZy">
    <property role="3GE5qa" value="cbd" />
    <ref role="1XX52x" to="2qxf:6rlO$dpKGs6" resolve="CBDRefinementCheckGoal" />
    <node concept="2ZK4vF" id="6rlO$dpLJZ$" role="2wV5jI">
      <node concept="3EZMnI" id="6rlO$dpLJZ_" role="1ytjkN">
        <node concept="3EZMnI" id="6rlO$dpLJZA" role="3EZMnx">
          <node concept="VPM3Z" id="6rlO$dpLJZB" role="3F10Kt" />
          <node concept="3F0ifn" id="6rlO$dpLJZC" role="3EZMnx">
            <property role="3F0ifm" value="A/G Refinement Check:" />
            <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="6rlO$dpLJZE" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="6rlO$dpLJZD" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="2sg$KXfUINn" role="3EZMnx" />
        <node concept="3F1sOY" id="6rlO$dpLJZP" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        </node>
        <node concept="2iRkQZ" id="6rlO$dpLJZR" role="2iSdaV" />
        <node concept="xShMh" id="6rlO$dpLJZS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="2sg$KXfVb8g" role="6VMZX">
      <node concept="2iRkQZ" id="2sg$KXfVb8h" role="2iSdaV" />
      <node concept="PMmxH" id="2sg$KXfVb8i" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3EZMnI" id="2sg$KXfVb8n" role="3EZMnx">
        <node concept="l2Vlx" id="2sg$KXfVb8o" role="2iSdaV" />
        <node concept="3F0ifn" id="2sg$KXfVb8p" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="2sg$KXfVb8q" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TR" resolve="undeveloped" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2sg$KXfUUbq">
    <property role="3GE5qa" value="cbd" />
    <ref role="1XX52x" to="2qxf:2sg$KXfUUbh" resolve="CBDAGCompatibilityGoal" />
    <node concept="2ZK4vF" id="2sg$KXfUUby" role="2wV5jI">
      <node concept="3EZMnI" id="2sg$KXfUUbz" role="1ytjkN">
        <node concept="3EZMnI" id="2sg$KXfUUb$" role="3EZMnx">
          <node concept="VPM3Z" id="2sg$KXfUUb_" role="3F10Kt" />
          <node concept="3F0ifn" id="2sg$KXfUUbA" role="3EZMnx">
            <property role="3F0ifm" value="A/G Compatibility Check:" />
            <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="2sg$KXfUUbB" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="2sg$KXfUUbC" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="2sg$KXfUUbD" role="3EZMnx" />
        <node concept="3F1sOY" id="2sg$KXfUUbE" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        </node>
        <node concept="2iRkQZ" id="2sg$KXfUUbF" role="2iSdaV" />
        <node concept="xShMh" id="2sg$KXfUUbG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="2sg$KXfVb8S" role="6VMZX">
      <node concept="2iRkQZ" id="2sg$KXfVb8T" role="2iSdaV" />
      <node concept="PMmxH" id="2sg$KXfVb8U" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3EZMnI" id="2sg$KXfVb8Z" role="3EZMnx">
        <node concept="l2Vlx" id="2sg$KXfVb90" role="2iSdaV" />
        <node concept="3F0ifn" id="2sg$KXfVb91" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="2sg$KXfVb92" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TR" resolve="undeveloped" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2sg$KXfVblU">
    <property role="3GE5qa" value="cbd" />
    <ref role="1XX52x" to="2qxf:2sg$KXfV8Ya" resolve="CBDImplementationCorrectnessGoal" />
    <node concept="3EZMnI" id="2sg$KXfVblW" role="6VMZX">
      <node concept="2iRkQZ" id="2sg$KXfVblX" role="2iSdaV" />
      <node concept="PMmxH" id="2sg$KXfVblY" role="3EZMnx">
        <ref role="PMmxG" to="g35p:2ccN23oa1rM" resolve="TextInInspector" />
      </node>
      <node concept="3F0ifn" id="2rzNEUxOFfy" role="3EZMnx" />
      <node concept="3EZMnI" id="2sg$KXfVbm3" role="3EZMnx">
        <node concept="l2Vlx" id="2sg$KXfVbm4" role="2iSdaV" />
        <node concept="3F0ifn" id="2sg$KXfVbm5" role="3EZMnx">
          <property role="3F0ifm" value="undeveloped:" />
        </node>
        <node concept="3F0A7n" id="2sg$KXfVbm6" role="3EZMnx">
          <ref role="1NtTu8" to="py52:7TjUbLQa$TR" resolve="undeveloped" />
        </node>
      </node>
    </node>
    <node concept="2ZK4vF" id="2sg$KXfVbmo" role="2wV5jI">
      <node concept="3EZMnI" id="2sg$KXfVbmp" role="1ytjkN">
        <node concept="3EZMnI" id="2sg$KXfVbmq" role="3EZMnx">
          <node concept="VPM3Z" id="2sg$KXfVbmr" role="3F10Kt" />
          <node concept="3F0ifn" id="2sg$KXfVbms" role="3EZMnx">
            <property role="3F0ifm" value="A/G Implementation Check:" />
            <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
          </node>
          <node concept="l2Vlx" id="2sg$KXfVbmt" role="2iSdaV" />
        </node>
        <node concept="3F0A7n" id="2sg$KXfVbmu" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="2sg$KXfVCaW" role="3EZMnx" />
        <node concept="3F1sOY" id="2sg$KXfVqbY" role="3EZMnx">
          <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        </node>
        <node concept="2iRkQZ" id="2sg$KXfVbmx" role="2iSdaV" />
        <node concept="xShMh" id="2sg$KXfVbmy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2RlaC$P5nC_">
    <property role="3GE5qa" value="cbd" />
    <ref role="1XX52x" to="2qxf:2RlaC$P5nCo" resolve="AbstractComponentRefWord" />
    <node concept="3EZMnI" id="2RlaC$P5nCL" role="2wV5jI">
      <node concept="3F0ifn" id="2RlaC$P5nCV" role="3EZMnx">
        <property role="3F0ifm" value="@component" />
        <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
      </node>
      <node concept="3F0ifn" id="2RlaC$P6waR" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2RlaC$P77rg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2RlaC$P77rl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="2RlaC$P5nD1" role="3EZMnx">
        <ref role="1NtTu8" to="2qxf:2RlaC$P5nCr" resolve="component" />
      </node>
      <node concept="3F0ifn" id="2RlaC$P6waH" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="2RlaC$P77rp" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2RlaC$P5nCO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2RlaC$P86OD">
    <property role="3GE5qa" value="hazards" />
    <ref role="1XX52x" to="2qxf:2RlaC$P86Ok" resolve="HazardsListRefWord" />
    <node concept="3EZMnI" id="2RlaC$P86OF" role="2wV5jI">
      <node concept="3F0ifn" id="2RlaC$P86OG" role="3EZMnx">
        <property role="3F0ifm" value="@hazards" />
        <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
      </node>
      <node concept="3F0ifn" id="2RlaC$PcSiM" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2RlaC$PdzZJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2RlaC$PdzZO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2RlaC$PcSj0" role="3EZMnx">
        <ref role="1NtTu8" to="2qxf:2RlaC$Pcvh7" resolve="hazardsList" />
        <node concept="1sVBvm" id="2RlaC$PcSj2" role="1sWHZn">
          <node concept="3F0A7n" id="2RlaC$PcSjd" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2RlaC$P86OL" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="2RlaC$P86OM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2RlaC$P86ON" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2RlaC$Pbl0Y">
    <property role="3GE5qa" value="hazards" />
    <ref role="1XX52x" to="2qxf:2RlaC$PbkQu" resolve="HazardRefWord" />
    <node concept="3EZMnI" id="2RlaC$Pbl10" role="2wV5jI">
      <node concept="3F0ifn" id="2RlaC$Pbl11" role="3EZMnx">
        <property role="3F0ifm" value="@hazard" />
        <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
      </node>
      <node concept="3F0ifn" id="2RlaC$PcChx" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2RlaC$PdimF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2RlaC$PdimK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2RlaC$PcChJ" role="3EZMnx">
        <ref role="1NtTu8" to="2qxf:2RlaC$PcChp" resolve="hazard" />
        <node concept="1sVBvm" id="2RlaC$PcChL" role="1sWHZn">
          <node concept="3F0A7n" id="2RlaC$PcCi2" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="cjwq:2N7iSwG$CrI" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2RlaC$Pbl16" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="2RlaC$Pbl17" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2RlaC$Pbl18" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2rzNEUxND_i">
    <property role="3GE5qa" value="requirements" />
    <ref role="1XX52x" to="2qxf:2rzNEUxND_5" resolve="RequirementDocumentRefWord" />
    <node concept="3EZMnI" id="2rzNEUxND_k" role="2wV5jI">
      <node concept="3F0ifn" id="2rzNEUxND_l" role="3EZMnx">
        <property role="3F0ifm" value="@reqDocu" />
        <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
      </node>
      <node concept="3F0ifn" id="2rzNEUxND_m" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="2rzNEUxND_n" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="2rzNEUxND_o" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="2rzNEUxND_p" role="3EZMnx">
        <ref role="1NtTu8" to="2qxf:2rzNEUxND_8" resolve="requirementDocument" />
        <node concept="1sVBvm" id="2rzNEUxND_q" role="1sWHZn">
          <node concept="3F0A7n" id="2rzNEUxND_r" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2rzNEUxND_s" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="2rzNEUxND_t" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2rzNEUxND_u" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="65LrkjiWSIn">
    <property role="3GE5qa" value="requirements" />
    <ref role="1XX52x" to="2qxf:65LrkjiWSI2" resolve="RequirementRefWord" />
    <node concept="3EZMnI" id="65LrkjiWSIp" role="2wV5jI">
      <node concept="3F0ifn" id="65LrkjiWSIq" role="3EZMnx">
        <property role="3F0ifm" value="@req" />
        <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
      </node>
      <node concept="3F0ifn" id="65LrkjiWSIr" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="65LrkjiWSIs" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="65LrkjiWSIt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="65LrkjiWSIu" role="3EZMnx">
        <ref role="1NtTu8" to="2qxf:65LrkjiWSI5" resolve="requirement" />
        <node concept="1sVBvm" id="65LrkjiWSIv" role="1sWHZn">
          <node concept="3F0A7n" id="65LrkjiWSIw" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="z27p:2N7iSwG$CrI" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="65LrkjiWSIx" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="65LrkjiWSIy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="65LrkjiWSIz" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="65Lrkjj21w3">
    <property role="3GE5qa" value="hazards" />
    <property role="TrG5h" value="HazardMitigatedGoalTextArea" />
    <ref role="1XX52x" to="2qxf:7TjUbLQ4517" resolve="HazardMitigatedGoal" />
    <node concept="3EZMnI" id="65Lrkjj21wb" role="2wV5jI">
      <node concept="3EZMnI" id="65Lrkjj21wc" role="3EZMnx">
        <node concept="VPM3Z" id="65Lrkjj21wd" role="3F10Kt" />
        <node concept="3F0ifn" id="65Lrkjj21we" role="3EZMnx">
          <property role="3F0ifm" value="Hazard Mitigation Goal:" />
          <ref role="1k5W1q" to="xnej:KwKRgpJu1g" resolve="ExtendedLanguageKeyword" />
        </node>
        <node concept="l2Vlx" id="65Lrkjj21wf" role="2iSdaV" />
      </node>
      <node concept="3F0A7n" id="65Lrkjj21wg" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="65Lrkjj21wh" role="3EZMnx" />
      <node concept="3F1sOY" id="65Lrkjj21wi" role="3EZMnx">
        <ref role="1NtTu8" to="py52:3GRi4m$qYoV" resolve="text" />
        <ref role="1k5W1q" to="g35p:65LrkjiZl64" resolve="GSNTextStyle" />
      </node>
      <node concept="2iRkQZ" id="65Lrkjj21wj" role="2iSdaV" />
      <node concept="xShMh" id="65Lrkjj21wk" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="1PE4EZ" id="65Lrkjj21wJ" role="1PM95z">
      <ref role="1PE7su" to="g35p:65Lrkjj1Rgv" resolve="GoalTextArea" />
    </node>
  </node>
</model>

