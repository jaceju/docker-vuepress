# docker-vuepress

A Docker Container for [VuePress](https://vuepress.vuejs.org).

Plug-in [vuepress-plugin-fulltext-search](https://github.com/leo-buneev/vuepress-plugin-fulltext-search) is built-in.

## Usage examples

Read the official [VuePress Documentation](https://vuepress.vuejs.org) first.

Enable the `fulltext-search` plugin in your `docs/.vuepress/config.js` before building or serving:

```json
// docs/.vuepress/config.js
module.exports = {
  // ...
  plugins: ['fulltext-search'],
}
```

And run this command in terminal:

```bash
# build
docker run --rm -v "$PWD:/vuepress" jaceju/vuepress build docs
# or serve
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
