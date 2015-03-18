import csv
lista = {}
c = 1/15
fnames = ['./Out/vistas_ene2000.csv','./Out/vistas_jun2000.csv','./Out/vistas_ene2001.csv']
for fname in fnames:
    with open(fname) as f:
        encabezado = f.readline()
        for line in f:
            item = line.strip('\n')
            for key in lista:
                lista[key] = lista[key]*(1-c)
                if(key==item):
                    lista[key] = lista[key] + c
            if(not (item in lista.keys())):
                lista[item] = c
            lista = {k:v for(k, v) in lista.iteritems() if v >= c/2}         
    with open(fname+'_lista_out.csv', 'wb') as f: 
        w = csv.writer(f)
        w.writerows(lista.items())