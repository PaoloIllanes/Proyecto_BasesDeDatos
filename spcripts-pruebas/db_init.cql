CREATE KEYSPACE IF NOT EXISTS users WITH replication = {'class': 'NetworkTopologyStrategy','datacenter1': 3};
USE users;
CREATE TABLE IF NOT EXISTS usuarios (
    id UUID PRIMARY KEY,
    nombre TEXT,
    apellido TEXT,
    edad INT
);

