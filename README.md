# Erlang-RED Elixir Helpers

This is the place for adding Elixir code to the [Erlang-RED](https://github.com/gorenje/erlang-red)) project.

This repository is included in [ErlangRED](https://github.com/gorenje/erlang-red/blob/276e116a012e52915ec9ad33962d14806689b9d1/rebar.config#L8-L10) and integrared by using the [exerl](https://github.com/filmor/exerl) rebar3 plugin [here](https://github.com/gorenje/erlang-red/blob/276e116a012e52915ec9ad33962d14806689b9d1/rebar.config#L62).

Initially this Elixir project only contains [earmark](https://erlangforums.com/t/markdown-support-how-best-to-do-that/4744/2?u=gorenje).

## Libraries contained here

- [earmark](https://github.com/pragdave/earmark) - for the [markdown](https://github.com/gorenje/erlang-red/blob/main/src/nodes/ered_node_markdown.erl) node
- [nimble_csv](https://github.com/dashbitco/nimble_csv) for the [csv](https://github.com/gorenje/erlang-red/blob/main/src/nodes/ered_node_csv.erl) node (WIP)

## Why?

Because I'm not a purist but a ployglot programmer. 

Some things are simply better in Elixir than Erlang but both use the BEAM VM - so why not take advantage of that.

Projects like Erlang-RED and Node-RED, that aim to unify much functionality, require many libraries to make them work. Node-RED benefits from the large community around [NPMjs](https://npmjs.org) while Erlang-RED benefits from [hex](https://hex.pm/) which is a mixture of Erlang and Elixir codebases.
