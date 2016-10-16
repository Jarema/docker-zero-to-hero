# Przykład 2
## Data Only Containers
### KOntenery dedykowane do przechowywania danych

### Budujemy nasz data only container
docker create -v /mydata --name datacon debian /bin/true

### Uruchamiamy nasz pierwszy kontener i montujemy volumen

docker run -it --volumes-from datacon --name service1 debian /bin/bash

### Uruchamiamy nasz frugi kontener i montujemy volumen

docker run -it --volumes-from datacon --name service2 debian /bin/bash
