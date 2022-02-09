<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.17.0-Master" styleCategories="Forms">
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="oirid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="r_segid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="a_segid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="seg_side">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="seg_side" type="QString" name="Key"/>
            <Option value="segside_tbl_16371cbb_6b9c_4212_9bd9_f61008372b6c" type="QString" name="Layer"/>
            <Option value="segside_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;segside_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gislink">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="strucdomain">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="strucdomain" type="QString" name="Key"/>
            <Option value="strucdomain_tbl_6773d6a8_634d_4155_9643_e8cbb6208bd4" type="QString" name="Layer"/>
            <Option value="strucdomain_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;strucdomain_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="structype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="&quot;strucfk&quot; = current_value('strucdomain')" type="QString" name="FilterExpression"/>
            <Option value="structype" type="QString" name="Key"/>
            <Option value="structype_tbl_7c1ea359_4363_4848_9689_2c3eec45ba57" type="QString" name="Layer"/>
            <Option value="structype_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;structype_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="true" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="strucdesc">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stnum_h">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="stnum_l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="stnum">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stnumsuf">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="building">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="floor">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="unit_type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="unit_type" type="QString" name="Key"/>
            <Option value="unit_type_tbl_d7ee7174_c853_4bc4_a2f4_5ccce468153b" type="QString" name="Layer"/>
            <Option value="unit_type_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;unit_type_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="unit_num">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="predir">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="predir" type="QString" name="Key"/>
            <Option value="predir_tbl_9b783f8e_6d90_4479_8dc8_d3241e249a57" type="QString" name="Layer"/>
            <Option value="predir_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;predir_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pretype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="predir" type="QString" name="Key"/>
            <Option value="predir_tbl_9b783f8e_6d90_4479_8dc8_d3241e249a57" type="QString" name="Layer"/>
            <Option value="predir_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;predir_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="type" type="QString" name="Key"/>
            <Option value="type_tbl_28802f1b_8122_49d6_99d9_1b0f8bc4b89a" type="QString" name="Layer"/>
            <Option value="type_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;type_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="sufdir">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="predir" type="QString" name="Key"/>
            <Option value="predir_tbl_9b783f8e_6d90_4479_8dc8_d3241e249a57" type="QString" name="Layer"/>
            <Option value="predir_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;predir_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="postmod">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="address">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="addr_esn">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="label">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="subname">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="vanity">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="zip">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="zip4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="esn">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="city">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="county">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="state">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="long">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lat">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_sp">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="y_sp">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="z_val">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="2147483647" type="int" name="Max"/>
            <Option value="-2147483648" type="int" name="Min"/>
            <Option value="0" type="int" name="Precision"/>
            <Option value="1" type="int" name="Step"/>
            <Option value="SpinBox" type="QString" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gpsdate">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="addrauth">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="source">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="source" type="QString" name="Key"/>
            <Option value="source_tbl_ea64f029_b8df_4946_b9eb_3ff155ee0896" type="QString" name="Layer"/>
            <Option value="source_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;source_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="editor">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geomod">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geosrce">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geodate">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="attmod">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="attsrce">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="attdate">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="status">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="status" type="QString" name="Key"/>
            <Option value="lifecyclestatus_tbl_5dceb1ee_229f_4bab_b198_c3aaf09acaec" type="QString" name="Layer"/>
            <Option value="lifecyclestatus_tbl" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;lifecyclestatus_tbl&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="false" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="description" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="delnotes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorField showLabel="1" index="17" name="predir"/>
    <attributeEditorField showLabel="1" index="6" name="strucdomain"/>
    <attributeEditorField showLabel="1" index="7" name="structype"/>
  </attributeEditorForm>
  <editable>
    <field name="a_segid" editable="1"/>
    <field name="addr_esn" editable="1"/>
    <field name="addrauth" editable="1"/>
    <field name="address" editable="1"/>
    <field name="attdate" editable="1"/>
    <field name="attmod" editable="1"/>
    <field name="attsrce" editable="1"/>
    <field name="building" editable="1"/>
    <field name="city" editable="1"/>
    <field name="county" editable="1"/>
    <field name="delnotes" editable="1"/>
    <field name="editor" editable="1"/>
    <field name="esn" editable="1"/>
    <field name="floor" editable="1"/>
    <field name="geodate" editable="1"/>
    <field name="geomod" editable="1"/>
    <field name="geosrce" editable="1"/>
    <field name="gislink" editable="1"/>
    <field name="gpsdate" editable="1"/>
    <field name="id" editable="1"/>
    <field name="label" editable="1"/>
    <field name="lat" editable="1"/>
    <field name="long" editable="1"/>
    <field name="name" editable="1"/>
    <field name="oirid" editable="1"/>
    <field name="postmod" editable="1"/>
    <field name="predir" editable="1"/>
    <field name="pretype" editable="1"/>
    <field name="r_segid" editable="1"/>
    <field name="seg_side" editable="1"/>
    <field name="source" editable="1"/>
    <field name="state" editable="1"/>
    <field name="status" editable="1"/>
    <field name="stnum" editable="1"/>
    <field name="stnum_h" editable="1"/>
    <field name="stnum_l" editable="1"/>
    <field name="stnumsuf" editable="1"/>
    <field name="strucdesc" editable="1"/>
    <field name="strucdomain" editable="1"/>
    <field name="structype" editable="1"/>
    <field name="subname" editable="1"/>
    <field name="sufdir" editable="1"/>
    <field name="type" editable="1"/>
    <field name="unit_num" editable="1"/>
    <field name="unit_type" editable="1"/>
    <field name="vanity" editable="1"/>
    <field name="x_sp" editable="1"/>
    <field name="y_sp" editable="1"/>
    <field name="z_val" editable="1"/>
    <field name="zip" editable="1"/>
    <field name="zip4" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="a_segid" labelOnTop="0"/>
    <field name="addr_esn" labelOnTop="0"/>
    <field name="addrauth" labelOnTop="0"/>
    <field name="address" labelOnTop="0"/>
    <field name="attdate" labelOnTop="0"/>
    <field name="attmod" labelOnTop="0"/>
    <field name="attsrce" labelOnTop="0"/>
    <field name="building" labelOnTop="0"/>
    <field name="city" labelOnTop="0"/>
    <field name="county" labelOnTop="0"/>
    <field name="delnotes" labelOnTop="0"/>
    <field name="editor" labelOnTop="0"/>
    <field name="esn" labelOnTop="0"/>
    <field name="floor" labelOnTop="0"/>
    <field name="geodate" labelOnTop="0"/>
    <field name="geomod" labelOnTop="0"/>
    <field name="geosrce" labelOnTop="0"/>
    <field name="gislink" labelOnTop="0"/>
    <field name="gpsdate" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="label" labelOnTop="0"/>
    <field name="lat" labelOnTop="0"/>
    <field name="long" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="oirid" labelOnTop="0"/>
    <field name="postmod" labelOnTop="0"/>
    <field name="predir" labelOnTop="0"/>
    <field name="pretype" labelOnTop="0"/>
    <field name="r_segid" labelOnTop="0"/>
    <field name="seg_side" labelOnTop="0"/>
    <field name="source" labelOnTop="0"/>
    <field name="state" labelOnTop="0"/>
    <field name="status" labelOnTop="0"/>
    <field name="stnum" labelOnTop="0"/>
    <field name="stnum_h" labelOnTop="0"/>
    <field name="stnum_l" labelOnTop="0"/>
    <field name="stnumsuf" labelOnTop="0"/>
    <field name="strucdesc" labelOnTop="0"/>
    <field name="strucdomain" labelOnTop="0"/>
    <field name="structype" labelOnTop="0"/>
    <field name="subname" labelOnTop="0"/>
    <field name="sufdir" labelOnTop="0"/>
    <field name="type" labelOnTop="0"/>
    <field name="unit_num" labelOnTop="0"/>
    <field name="unit_type" labelOnTop="0"/>
    <field name="vanity" labelOnTop="0"/>
    <field name="x_sp" labelOnTop="0"/>
    <field name="y_sp" labelOnTop="0"/>
    <field name="z_val" labelOnTop="0"/>
    <field name="zip" labelOnTop="0"/>
    <field name="zip4" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <layerGeometryType>0</layerGeometryType>
</qgis>
