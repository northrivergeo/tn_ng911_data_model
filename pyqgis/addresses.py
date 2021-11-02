from qgis.core import *

layer = iface.activeLayer() 

selection = layer.selectedFeatures()
for feature in selection: 
    try:
        lfadd = int(feature["l_f_add"])
        ltadd = int(feature["l_t_add"])
        rfadd = int(feature["r_f_add"])
        rtadd = int(feature["r_t_add"])
        geom = feature.geometry() 
        list = [*range(lfadd, ltadd, 4)]
        geom = feature.geometry() 
        lpa = geom.length()/len(list)
        print(lpa)
    except: 
        print(sys.exc_info()[0])