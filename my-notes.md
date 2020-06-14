

[python-manylinux-demo](https://github.com/pypa/python-manylinux-demo)


`docker build --tag pedroregispoar/nixos/python-manylinux-demo .`

```
docker run \
--interactive \
--rm \
--tty \
--volume "$(pwd)":/code \
--workdir /code \
pedroregispoar/nixos/python-manylinux-demo
```


Como instalar atlas-devel?

Primeira coisa que fiz foi procurar no:

[https://nixos.org/nixos/packages.html?channel=nixos-20.03&query=atlas](https://nixos.org/nixos/packages.html?channel=nixos-20.03&query=atlas)

Não tem, pelo visto ninguém empacotou.


Após pesquisa no google encontrei:

[atlas_install](http://math-atlas.sourceforge.net/atlas_install/node4.html)


[atlas_install complete](http://math-atlas.sourceforge.net/atlas_install/node6.html)



Não leve muito a sério os comandos abaixo:

bunzip2 atlas3.10.3.tar.bz2

tar xfm atlas3.10.3.tar

mv ATLAS ATLAS3.10.3

cd ATLAS3.10.3

mkdir Linux_C2D64SSE3

cd Linux_C2D64SSE3 


../configure -b 64 -D c -DPentiumCPS=2400 --prefix=$out

../configure -b 64 -D c -DPentiumCPS=2400 \
--prefix=/home/whaley/lib/atlas \
--with-netlib-lapack-tarfile=/home/whaley/dload/lapack-3.4.1.tgz

make build
make check
make ptcheck
make time
make install



