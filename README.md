# bcftools-mruby

[![build](https://github.com/kojix2/bcftools-tanuki/actions/workflows/build.yml/badge.svg)](https://github.com/kojix2/bcftools-tanuki/actions/workflows/build.yml)

Use [mruby](https://github.com/mruby/mruby) to evaluate expressions.

## Installation

```
git clone --recurse-submodules https://github.com/kojix2/bcftools-mruby
./build.sh
bcftools/bcftools tanuki # check if it works
```

```
　　　　__,-─-､__
　　　（〆-─-ヽ)
　　　 （ ´・ω・｀ ）
　　　/ 　,r‐‐‐､ヽ
　 　 し　ｌ　 x　）J
　　　_.'､ ヽ　 ノ.人
　(_((__,ノＵ´U. (酒)

　Tanuki in mruby (3.3.0)
```

[Rake](https://github.com/ruby/rake) is required to build mruby.
If you are using [conda to install Ruby](https://dev.to/kojix2/using-ruby-with-conda-1hn), setting the `LD` environment may work.

```sh
rake LD=/usr/bin/gcc MRUBY_CONFIG=$(pwd)/mruby_build_config.rb -f $(pwd)/mruby/Rakefile
```

## Usage

## Development

## Contributing

- Fork it
- Pull Request welcome

## License

MIT

## Related Projects

- [samtools-mruby](https://github.com/kojix2/samtools-mruby)
