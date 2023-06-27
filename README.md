
# Cluster de cassandra db con docker compose

## Implementación De una base de datos distribuida con Cassandra db utilizando un cluster con 3 nodos en docker.


## Requisitos: 

![App Screenshot](https://1000marcas.net/wp-content/uploads/2021/05/Docker-Logo-2015.png)

![App Screenshot](https://sdtimes.com/wp-content/uploads/2015/05/0519.sdt-datastax.jpg)

- Instalar DATASTAX devcenter para acceder a la base de datos

- Instalar docker desktop

- Tener al menos 6Gb de memoria RAM disponibles  

- Una vez instalado docker desktop ejecutar el siguiente comando para descargar la imagen de cassandra:

```bash
  docker pull cassandra
```

## Correr el proyecto localmente

#### Verificar que se tiene instalado docker-compose

```bash
  docker-compose --version
```

#### Clonar el proyecto

```bash
  git clone https://github.com/PaoloIllanes/Proyecto_BasesDeDatos.git
```


#### Ir al directorio del proyecto

```bash
  cd Proyecto_BasesDeDatos
```

#### Cambiar de rama 

```bash
  git checkout 3P
```

#### Correr el comando de docker con el archivo de configuracion docker-compose.yml

```SQL
  docker-compose up
```

## Conectarse con un cliente gestor de base de datos como DATASTAX devcenter

- Node1 : localhost:9042
- Node2 : localhost:9043
- Node3 : localhost:9044

### Credenciales por defecto para todos los nodos:
- User=root
- Password=root
![App Screenshot](https://sdtimes.com/wp-content/uploads/2015/05/0519.sdt-datastax.jpg)



## Crear una conexion een DATASTAX devcenter:


### ->  Repetir el proceso para cada uno de los nodos con sus respectivas credenciales y puertos:

![App Screenshot](https://i.ibb.co/fnSzHWj/stax1.png)
![App Screenshot](https://camo.githubusercontent.com/fd8eaaf035ce04649c1699611f3dd4c32732c0a9055f57d411726d3f663f53d3/68747470733a2f2f692e6962622e636f2f666e537a48576a2f73746178312e706e67)


### ->  Realizar las pruebas de replicacion e integridad del cluster con los siguientes scripts que se encuentran en la carpeta de "scripts_pruebas"
![App Screenshot](https://i.ibb.co/HNjR0Yy/stax3.png)
