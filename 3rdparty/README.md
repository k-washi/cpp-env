# versions

# OPENCV
- opencv 4.6.0

cmake時に`pkgcnofig`をonにすることで、`/usr/local/lib/pkgconfig`に`opencv4.pc`が発行される。

```
OPENCV_GENERATE_PKGCONFIG=ON
```

結果的に、で

```
g++ i.cpp -o o.out `pkg-config --cflags --libs opencv4`
```