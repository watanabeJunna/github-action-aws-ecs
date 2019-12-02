
```sh
$ docker run -it --rm -v /`pwd`/app://app -w //app composer create-project --prefer-dist "laravel/laravel=5.8.*" 
$ docker build -t laravel-test-app -f laravel.Dockerfile .
```
