# Przykład 1
## Praktyczne zastosowanie volumenów
### Co się dzieje gdy montujemy volumen w miejsce w którym sa już pliki

### Bugowanie nowego image w oparciu o image nginx
docker build -t my-nginx .

### Uruchamiamy nowy image bez przekazania volumenu

docker run -d -p 90:90 my-nginx

- sprawdzamy czy kontener działa i sprawdzamy przegladarka http://localjost:90

### Zatrzymujemy stary kondener i uruchamiamy nowy z przekazaniem volumenu

docker rm -f my-nginx
docker run -d -p 90:80 -v `pwd`/new-content:/usr/share/nginx/html my-nginx

- sprawdzamy czy kontener działa i sprawdzamy przegladarka http://localjost:90

### Ponownie uruchamiamy kontener bez volumenu

docker rm -f my-nginx
docker run -d -p 90:80 my-nginx
