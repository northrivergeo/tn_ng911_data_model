<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.16.0-Hannover" styleCategories="Forms">
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
    <field name="structype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="&quot;strucfk&quot; = current_value('strucdomain')" type="QString" name="FilterExpression"/>
            <Option value="structype" type="QString" name="Key"/>
            <Option value="structype_tbl_d89c48f2_59f0_4127_ba77_1474f320d3d1" type="QString" name="Layer"/>
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
            <Option value="predir_tbl_e75a42c1_a8b8_4ec4_acae_5abbccb95829" type="QString" name="Layer"/>
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
            <Option value="predir_tbl_e75a42c1_a8b8_4ec4_acae_5abbccb95829" type="QString" name="Layer"/>
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
          <Option/>
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
            <Option value="type_tbl_4b396258_4785_4912_bef7_e447d536ba93" type="QString" name="Layer"/>
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
            <Option value="predir_tbl_e75a42c1_a8b8_4ec4_acae_5abbccb95829" type="QString" name="Layer"/>
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
      <editWidget type="TextEdit">
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
      <editWidget type="Range">
        <config>
          <Option/>
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
      <editWidget type="Range">
        <config>
          <Option/>
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
    <field name="strucdomain">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="strucdomain" type="QString" name="Key"/>
            <Option value="strucdomain_tbl_fb87493f_f136_4acf_80f2_ee09f9b453d4" type="QString" name="Layer"/>
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
    <attributeEditorField index="16" showLabel="1" name="predir"/>
    <attributeEditorField index="50" showLabel="1" name="strucdomain"/>
    <attributeEditorField index="6" showLabel="1" name="structype"/>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="a_segid"/>
    <field editable="1" name="addr_esn"/>
    <field editable="1" name="addrauth"/>
    <field editable="1" name="address"/>
    <field editable="1" name="attdate"/>
    <field editable="1" name="attmod"/>
    <field editable="1" name="attsrce"/>
    <field editable="1" name="building"/>
    <field editable="1" name="city"/>
    <field editable="1" name="county"/>
    <field editable="1" name="delnotes"/>
    <field editable="1" name="editor"/>
    <field editable="1" name="esn"/>
    <field editable="1" name="floor"/>
    <field editable="1" name="geodate"/>
    <field editable="1" name="geomod"/>
    <field editable="1" name="geosrce"/>
    <field editable="1" name="gislink"/>
    <field editable="1" name="gpsdate"/>
    <field editable="1" name="id"/>
    <field editable="1" name="label"/>
    <field editable="1" name="lat"/>
    <field editable="1" name="long"/>
    <field editable="1" name="name"/>
    <field editable="1" name="oirid"/>
    <field editable="1" name="postmod"/>
    <field editable="1" name="predir"/>
    <field editable="1" name="pretype"/>
    <field editable="1" name="r_segid"/>
    <field editable="1" name="seg_side"/>
    <field editable="1" name="source"/>
    <field editable="1" name="state"/>
    <field editable="1" name="status"/>
    <field editable="1" name="stnum"/>
    <field editable="1" name="stnum_h"/>
    <field editable="1" name="stnum_l"/>
    <field editable="1" name="stnumsuf"/>
    <field editable="1" name="strucdesc"/>
    <field editable="1" name="strucdomain"/>
    <field editable="1" name="structype"/>
    <field editable="1" name="subname"/>
    <field editable="1" name="sufdir"/>
    <field editable="1" name="type"/>
    <field editable="1" name="unit_num"/>
    <field editable="1" name="unit_type"/>
    <field editable="1" name="vanity"/>
    <field editable="1" name="x_sp"/>
    <field editable="1" name="y_sp"/>
    <field editable="1" name="z_val"/>
    <field editable="1" name="zip"/>
    <field editable="1" name="zip4"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="a_segid"/>
    <field labelOnTop="0" name="addr_esn"/>
    <field labelOnTop="0" name="addrauth"/>
    <field labelOnTop="0" name="address"/>
    <field labelOnTop="0" name="attdate"/>
    <field labelOnTop="0" name="attmod"/>
    <field labelOnTop="0" name="attsrce"/>
    <field labelOnTop="0" name="building"/>
    <field labelOnTop="0" name="city"/>
    <field labelOnTop="0" name="county"/>
    <field labelOnTop="0" name="delnotes"/>
    <field labelOnTop="0" name="editor"/>
    <field labelOnTop="0" name="esn"/>
    <field labelOnTop="0" name="floor"/>
    <field labelOnTop="0" name="geodate"/>
    <field labelOnTop="0" name="geomod"/>
    <field labelOnTop="0" name="geosrce"/>
    <field labelOnTop="0" name="gislink"/>
    <field labelOnTop="0" name="gpsdate"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="label"/>
    <field labelOnTop="0" name="lat"/>
    <field labelOnTop="0" name="long"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="oirid"/>
    <field labelOnTop="0" name="postmod"/>
    <field labelOnTop="0" name="predir"/>
    <field labelOnTop="0" name="pretype"/>
    <field labelOnTop="0" name="r_segid"/>
    <field labelOnTop="0" name="seg_side"/>
    <field labelOnTop="0" name="source"/>
    <field labelOnTop="0" name="state"/>
    <field labelOnTop="0" name="status"/>
    <field labelOnTop="0" name="stnum"/>
    <field labelOnTop="0" name="stnum_h"/>
    <field labelOnTop="0" name="stnum_l"/>
    <field labelOnTop="0" name="stnumsuf"/>
    <field labelOnTop="0" name="strucdesc"/>
    <field labelOnTop="0" name="strucdomain"/>
    <field labelOnTop="0" name="structype"/>
    <field labelOnTop="0" name="subname"/>
    <field labelOnTop="0" name="sufdir"/>
    <field labelOnTop="0" name="type"/>
    <field labelOnTop="0" name="unit_num"/>
    <field labelOnTop="0" name="unit_type"/>
    <field labelOnTop="0" name="vanity"/>
    <field labelOnTop="0" name="x_sp"/>
    <field labelOnTop="0" name="y_sp"/>
    <field labelOnTop="0" name="z_val"/>
    <field labelOnTop="0" name="zip"/>
    <field labelOnTop="0" name="zip4"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <layerGeometryType>0</layerGeometryType>
</qgis>
