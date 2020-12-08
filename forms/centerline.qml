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
    <field name="segid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="l_f_add">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="l_t_add">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="r_f_add">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="r_t_add">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="addr_type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="type"/>
            <Option name="Layer" type="QString" value="addrtype_tbl_93918d72_366d_4706_acf7_291f3e6bb724"/>
            <Option name="LayerName" type="QString" value="addrtype_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;addrtype_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="predir">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="predir"/>
            <Option name="Layer" type="QString" value="predir_tbl_f0e04fef_e0d9_4705_8058_4fc860c66c9a"/>
            <Option name="LayerName" type="QString" value="predir_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;predir_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pretype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="type"/>
            <Option name="Layer" type="QString" value="type_tbl_8666d1d7_ea38_4efa_b610_262a216d2d6c"/>
            <Option name="LayerName" type="QString" value="type_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;type_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="type">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="type"/>
            <Option name="Layer" type="QString" value="type_tbl_8666d1d7_ea38_4efa_b610_262a216d2d6c"/>
            <Option name="LayerName" type="QString" value="type_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;type_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="true"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="sufdir">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="predir"/>
            <Option name="Layer" type="QString" value="predir_tbl_f0e04fef_e0d9_4705_8058_4fc860c66c9a"/>
            <Option name="LayerName" type="QString" value="predir_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;predir_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
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
    <field name="label">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="vanity">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="subname">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="nametype">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="type"/>
            <Option name="Layer" type="QString" value="nametype_tbl_6d0cc4a5_1534_45eb_92ea_1526699404d7"/>
            <Option name="LayerName" type="QString" value="nametype_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;nametype_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="cfcc">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="cfcc"/>
            <Option name="Layer" type="QString" value="cfcc_tbl_1f21324e_4036_49ac_83b9_31deb9cef96d"/>
            <Option name="LayerName" type="QString" value="cfcc_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;cfcc_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="esn_l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="esn_r">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="zip_l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="zip_r">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="city_l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="city_r">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="county_l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="county_r">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="state_l">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="state_r">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="spdlimit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="oneway">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="oneway"/>
            <Option name="Layer" type="QString" value="oneway_tbl_1a031a43_6da0_4277_8b01_27cfffa112f5"/>
            <Option name="LayerName" type="QString" value="oneway_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;oneway_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="lanes">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="t_elev">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="f_elev">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tfcost">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ftcost">
      <editWidget type="TextEdit">
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
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="geodate">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="yyyy-MM-dd"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="attmod">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="attsrc">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" type="bool" value="false"/>
            <Option name="UseHtml" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="attdate">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" type="bool" value="true"/>
            <Option name="calendar_popup" type="bool" value="true"/>
            <Option name="display_format" type="QString" value="yyyy-MM-dd"/>
            <Option name="field_format" type="QString" value="yyyy-MM-dd"/>
            <Option name="field_iso_format" type="bool" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="status">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" type="bool" value="false"/>
            <Option name="AllowNull" type="bool" value="true"/>
            <Option name="Description" type="QString" value=""/>
            <Option name="FilterExpression" type="QString" value=""/>
            <Option name="Key" type="QString" value="status"/>
            <Option name="Layer" type="QString" value="lifecyclestatus_tbl_5dceb1ee_229f_4bab_b198_c3aaf09acaec"/>
            <Option name="LayerName" type="QString" value="lifecyclestatus_tbl"/>
            <Option name="LayerProviderName" type="QString" value="postgres"/>
            <Option name="LayerSource" type="QString" value="dbname='tndemo' host=localhost port=5432 user='rjhale' sslmode=disable key='id' checkPrimaryKeyUnicity='0' table=&quot;forms&quot;.&quot;lifecyclestatus_tbl&quot;"/>
            <Option name="NofColumns" type="int" value="1"/>
            <Option name="OrderByValue" type="bool" value="false"/>
            <Option name="UseCompleter" type="bool" value="false"/>
            <Option name="Value" type="QString" value="description"/>
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
  <editable>
    <field name="addr_type" editable="1"/>
    <field name="attdate" editable="1"/>
    <field name="attmod" editable="1"/>
    <field name="attsrc" editable="1"/>
    <field name="cfcc" editable="1"/>
    <field name="city_l" editable="1"/>
    <field name="city_r" editable="1"/>
    <field name="county_l" editable="1"/>
    <field name="county_r" editable="1"/>
    <field name="editor" editable="1"/>
    <field name="esn_l" editable="1"/>
    <field name="esn_r" editable="1"/>
    <field name="f_elev" editable="1"/>
    <field name="ftcost" editable="1"/>
    <field name="geodate" editable="1"/>
    <field name="geomod" editable="1"/>
    <field name="geosrce" editable="1"/>
    <field name="id" editable="1"/>
    <field name="l_f_add" editable="1"/>
    <field name="l_t_add" editable="1"/>
    <field name="label" editable="1"/>
    <field name="lanes" editable="1"/>
    <field name="name" editable="1"/>
    <field name="nametype" editable="1"/>
    <field name="oirid" editable="1"/>
    <field name="oneway" editable="1"/>
    <field name="postmod" editable="1"/>
    <field name="predir" editable="1"/>
    <field name="pretype" editable="1"/>
    <field name="r_f_add" editable="1"/>
    <field name="r_t_add" editable="1"/>
    <field name="segid" editable="1"/>
    <field name="spdlimit" editable="1"/>
    <field name="state_l" editable="1"/>
    <field name="state_r" editable="1"/>
    <field name="status" editable="1"/>
    <field name="subname" editable="1"/>
    <field name="sufdir" editable="1"/>
    <field name="t_elev" editable="1"/>
    <field name="tfcost" editable="1"/>
    <field name="type" editable="1"/>
    <field name="vanity" editable="1"/>
    <field name="zip_l" editable="1"/>
    <field name="zip_r" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="addr_type" labelOnTop="0"/>
    <field name="attdate" labelOnTop="0"/>
    <field name="attmod" labelOnTop="0"/>
    <field name="attsrc" labelOnTop="0"/>
    <field name="cfcc" labelOnTop="0"/>
    <field name="city_l" labelOnTop="0"/>
    <field name="city_r" labelOnTop="0"/>
    <field name="county_l" labelOnTop="0"/>
    <field name="county_r" labelOnTop="0"/>
    <field name="editor" labelOnTop="0"/>
    <field name="esn_l" labelOnTop="0"/>
    <field name="esn_r" labelOnTop="0"/>
    <field name="f_elev" labelOnTop="0"/>
    <field name="ftcost" labelOnTop="0"/>
    <field name="geodate" labelOnTop="0"/>
    <field name="geomod" labelOnTop="0"/>
    <field name="geosrce" labelOnTop="0"/>
    <field name="id" labelOnTop="0"/>
    <field name="l_f_add" labelOnTop="0"/>
    <field name="l_t_add" labelOnTop="0"/>
    <field name="label" labelOnTop="0"/>
    <field name="lanes" labelOnTop="0"/>
    <field name="name" labelOnTop="0"/>
    <field name="nametype" labelOnTop="0"/>
    <field name="oirid" labelOnTop="0"/>
    <field name="oneway" labelOnTop="0"/>
    <field name="postmod" labelOnTop="0"/>
    <field name="predir" labelOnTop="0"/>
    <field name="pretype" labelOnTop="0"/>
    <field name="r_f_add" labelOnTop="0"/>
    <field name="r_t_add" labelOnTop="0"/>
    <field name="segid" labelOnTop="0"/>
    <field name="spdlimit" labelOnTop="0"/>
    <field name="state_l" labelOnTop="0"/>
    <field name="state_r" labelOnTop="0"/>
    <field name="status" labelOnTop="0"/>
    <field name="subname" labelOnTop="0"/>
    <field name="sufdir" labelOnTop="0"/>
    <field name="t_elev" labelOnTop="0"/>
    <field name="tfcost" labelOnTop="0"/>
    <field name="type" labelOnTop="0"/>
    <field name="vanity" labelOnTop="0"/>
    <field name="zip_l" labelOnTop="0"/>
    <field name="zip_r" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <layerGeometryType>1</layerGeometryType>
</qgis>
