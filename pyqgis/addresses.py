from qgis.core import *

layer = iface.activeLayer() 
dist = 5.28

selection = layer.selectedFeatures()
for feature in selection: 
    try:
        lfadd = int(feature["l_f_add"])
        ltadd = int(feature["l_t_add"])
        rfadd = int(feature["r_f_add"])
        rtadd = int(feature["r_t_add"])
        geom = feature.geometry() 
        lpa = (geom.length()/dist)
        print(math.floor(lpa))
    except: 
        print(sys.exc_info()[0])


https://anitagraser.com/pyqgis-101-introduction-to-qgis-python-programming-for-non-programmers/pyqgis-101-using-expressions-to-compute-new-field-values/
