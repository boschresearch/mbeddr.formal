<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ea5ecccc-669e-41c1-a43d-021bc4263d33(com.fasten.safety.ft.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
    </language>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="6327362524875300597" name="icon" index="rwd14" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  <node concept="1TIwiD" id="5rwT_JnuQVv">
    <property role="EcuMT" value="6260256764176592607" />
    <property role="TrG5h" value="FaultTree" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="fault tree" />
    <property role="R4oN_" value="fault tree" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5rwT_JnuR3W" role="1TKVEi">
      <property role="IQ2ns" value="6260256764176593148" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elements" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5rwT_JnuR3U" resolve="FaultTreeElementBase" />
    </node>
    <node concept="1TJgyj" id="5rwT_JnuR3Y" role="1TKVEi">
      <property role="IQ2ns" value="6260256764176593150" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="connections" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5rwT_JnuR3V" resolve="FaultTreeConnectionBase" />
    </node>
    <node concept="PrWs8" id="5rwT_JnuR3S" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1irR5M" id="5rwT_JnuR41" role="rwd14">
      <property role="2$rrk2" value="1" />
      <node concept="1irPie" id="5rwT_JnuR48" role="1irR9h">
        <property role="1irPi9" value="F" />
        <node concept="3PKj8D" id="5rwT_JnuR4c" role="3PKjny">
          <property role="3PKj8l" value="FF1111" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="5rwT_JnuR3U">
    <property role="EcuMT" value="6260256764176593146" />
    <property role="TrG5h" value="FaultTreeElementBase" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="base" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="5rwT_JnuR3V">
    <property role="EcuMT" value="6260256764176593147" />
    <property role="TrG5h" value="FaultTreeConnectionBase" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="base" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5rwT_JnwiU6" role="1TKVEi">
      <property role="IQ2ns" value="6260256764176969350" />
      <property role="20kJfa" value="start" />
      <ref role="20lvS9" node="5rwT_JnuR3U" resolve="FaultTreeElementBase" />
    </node>
    <node concept="1TJgyj" id="5rwT_JnwiU8" role="1TKVEi">
      <property role="IQ2ns" value="6260256764176969352" />
      <property role="20kJfa" value="end" />
      <ref role="20lvS9" node="5rwT_JnuR3U" resolve="FaultTreeElementBase" />
    </node>
  </node>
  <node concept="1TIwiD" id="5rwT_JnuR4f">
    <property role="EcuMT" value="6260256764176593167" />
    <property role="TrG5h" value="TopEvent" />
    <property role="34LRSv" value="Top Event" />
    <property role="R4oN_" value="a top event" />
    <property role="3GE5qa" value="events" />
    <ref role="1TJDcQ" node="5rwT_JnuRci" resolve="EventBase" />
  </node>
  <node concept="1TIwiD" id="5rwT_JnuR4E">
    <property role="EcuMT" value="6260256764176593194" />
    <property role="TrG5h" value="BasicEvent" />
    <property role="34LRSv" value="Basic Event" />
    <property role="R4oN_" value="a basic event" />
    <property role="3GE5qa" value="events" />
    <ref role="1TJDcQ" node="5rwT_JnuRci" resolve="EventBase" />
  </node>
  <node concept="1TIwiD" id="5rwT_JnuRci">
    <property role="EcuMT" value="6260256764176593682" />
    <property role="TrG5h" value="EventBase" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="events" />
    <ref role="1TJDcQ" node="5rwT_JnuR3U" resolve="FaultTreeElementBase" />
    <node concept="1TJgyi" id="5rwT_JnuRcl" role="1TKVEl">
      <property role="IQ2nx" value="6260256764176593685" />
      <property role="TrG5h" value="probability" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="5rwT_JnuRcj" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5rwT_JnwiTK">
    <property role="EcuMT" value="6260256764176969328" />
    <property role="TrG5h" value="Connection" />
    <property role="34LRSv" value="connection" />
    <ref role="1TJDcQ" node="5rwT_JnuR3V" resolve="FaultTreeConnectionBase" />
  </node>
  <node concept="1TIwiD" id="3EWkVoQ4QSf">
    <property role="EcuMT" value="4232349791877819919" />
    <property role="TrG5h" value="GateBase" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="gates" />
    <ref role="1TJDcQ" node="5rwT_JnuR3U" resolve="FaultTreeElementBase" />
  </node>
  <node concept="1TIwiD" id="3EWkVoQ4QSg">
    <property role="EcuMT" value="4232349791877819920" />
    <property role="TrG5h" value="OrGate" />
    <property role="34LRSv" value="Or Gate" />
    <property role="R4oN_" value="or gate" />
    <property role="3GE5qa" value="gates" />
    <ref role="1TJDcQ" node="3EWkVoQ4QSf" resolve="GateBase" />
  </node>
  <node concept="1TIwiD" id="3EWkVoQ5lqI">
    <property role="EcuMT" value="4232349791877945006" />
    <property role="TrG5h" value="AndGate" />
    <property role="34LRSv" value="And Gate" />
    <property role="R4oN_" value="an and gate" />
    <property role="3GE5qa" value="gates" />
    <ref role="1TJDcQ" node="3EWkVoQ4QSf" resolve="GateBase" />
  </node>
</model>

