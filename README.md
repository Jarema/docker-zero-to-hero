# docker-zero-to-hero

## Volumes
- Jak działają wolumeny w docker
Jak jest zbudowany image (RO layers), a co się dzieje gdy uruchamiany jest kontener (Thin RW layer)
- Rodzaje wolumenów (pluginy)
- Przekazywanie fs z hosta (example1)
- Przekazywanie z "data only containers" (example2)
- Hackaton: Zadanie to stworzyć "data only container" jeden kontener będzie zapisywał drugi z nginx będzie wyświetlał dane via www.

## Network
- po co nam sieci w dockerze
- rodzaje sieci
- przykład użycia sieci typu host (network/host.sh)
- przykład użycia sieci typu bridge (network/bridge.sh)
- przykład użycia sieci typu user defined (network/network.sh)
- Hackaton: Stworzyć własna sieć, uruchomic w niej jedna appke oraz nginxa jako reverse proxy. Opublikowac port nginx'a

## Hackaton
[link](Hackaton.md)
