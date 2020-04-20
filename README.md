# docker-vuepress

A Docker Container for [VuePress](https://vuepress.vuejs.org).

## Usage examples

Read the official [VuePress Documentation](https://vuepress.vuejs.org) first.

```bash
# build
docker run --rm -v "$PWD:/vuepress" jaceju/vuepress build docs
# serve
docker run --rm -d -v "$PWD:/vuepress" -p 8080:8080 jaceju/vuepress dev docs
```

For short, you can use alias for the long command line text. Place the alias statement in your `.bashrc` or `.zshrc`.

```bash
alias vuepress='docker run --rm -d -v "$PWD":/vuepress -p 8080:8080 jaceju/vuepress'
```

## Build Docker Image

```
docker build --no-cache -t jaceju/vuepress .
```

## License

[The MIT License (MIT)](https://opensource.org/licenses/MIT)
