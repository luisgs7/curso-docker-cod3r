# Network

Sem network

```
docker container run --rm --net none alpine ash "ifconfig"
```

Inspecionar network

```
docker network ls
```

```
docker network inspect bridge|none|host
```

Network bridge

```
docker container run -d --name container1 alpine sleep 1000
```

```
docker container run -d --name container2 alpine sleep 1000
```

```
docker container exec -it container1 ifconfig
```

```
docker network create --driver bridge rede_nova
```

```
docker container run -d --name container2 --net rede_nova alpine sleep 1000
```

conectar um container de uma rede em outra rede

```
docker network connect bridge container3
```

```
docker container exec -it container3 ifconfig
```

desconectar de uma rede

```
docker network disconnect bridge container3
```

network modo host(menos seguro)

```
docker container run -d --name container4 --net host alpine sleep 1000
```

```
docker container exec -it container4 ifconfig
```