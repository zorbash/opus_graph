# Opus.Graph

[![Build Status](https://travis-ci.org/zorbash/opus_graph.svg?branch=master)](https://travis-ci.org/zorbash/opus_graph)
[![Package Version](https://img.shields.io/hexpm/v/opus.svg)](https://hex.pm/packages/opus)
[![Coverage Status](https://coveralls.io/repos/github/zorbash/opus/badge.svg?branch=master)](https://coveralls.io/github/zorbash/opus?branch=master)

A complementary package for [Opus][opus] which visualises pipelines using Graphviz.

## Installation

The package can be installed by adding `opus_graph` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:opus_graph, "~> 0.1"}]
end
```

## Documentation

* [hexdocs](https://hexdocs.pm/opus_graph)
* [wiki](https://github.com/zorbash/opus_graph/wiki)

## Usage

```elixir
Opus.Graph.generate(:your_app)
# => {:ok, "Graph file has been written to your_app_opus_graph.png"}
```

This feature uses [graphviz][graphviz], so make sure to have it
installed. To install it:

```shell
# MacOS

brew install graphviz
```

```shell
# Debian / Ubuntu

apt-get install graphviz
```

`Opus.Graph` is in fact a pipeline and its visualisation is:

![graph-png](https://i.imgur.com/41kHjZL.png)

You can customise the visualisation:

```elixir
Opus.Graph.generate(:your_app, %{filetype: :svg})
# => {:ok, "Graph file has been written to your_app_opus_graph.svg"}
```

Read the available visualisation options [here][hexdocs-graph].

## License

Copyright (c) 2018 Dimitris Zorbas, MIT License.
See [LICENSE.txt](https://github.com/zorbash/opus/blob/master/LICENSE.txt) for further details.

[hexdocs-graph]: https://hexdocs.pm/opus/Opus.Graph.html
[graphviz]: https://www.graphviz.org/
[opus]: https://github.com/zorbash/opus
