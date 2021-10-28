layer = iface.activeLayer() 

selection = layer.selectedFeatures()
for feature in selection: 
     lfadd = int(feature["l_f_add"])
     ltadd = int(feature["l_t_add"])
     rfadd = int(feature["r_f_add"])
     rtadd = int(feature["r_t_add"])
     geom = feature.geometry() 
     list = [*range(lfadd, ltadd, 4)]
     print(list)