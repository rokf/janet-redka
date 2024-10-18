# janet-redka

This is a Janet client library for Redka.

## Installation

This library can be installed with `jpm` using `jpm install https://github.com/rokf/janet-redka`
or by adding the following line into your project's dependency tuple:

```janet
{ :url "https://github.com/rokf/janet-redka" :tag "main" }
```

After it is installed you should be able to import it using `(import redka)`.

## API

### `redka/make-client`

The `make-client` function takes two optional parameters:
- `host` (string), defaults to `127.0.0.1`
- `port` (number), defaults to `6379`

It creates a new Redka client that wraps its RESP API. The client can be
used with Janet's `with`, because it implements a `:close` method.

```janet
(def client (redka/make-client "localhost" 6379))
```

### `redka/{command}`

Functions for Redka's commands are generated using a macro because they all
follow the same pattern. See [commands](https://github.com/nalgeon/redka/tree/main/docs/commands) for
details about the commands that Redka supports. See tests and examples for some practical usage examples.
They're following the pattern below:

```
(redka/{command} client & args)
```

Some commands don't take any arguments. In those cases you'd only have to pass
in the client.

### `redka/close`

Closes the underlying connection stream.

```janet
(redka/close client)
```

## Examples

Usage examples can be found in the `example` folder. It also contains a
Docker Compose specification, which can be used to spin up an appropriately configured
Redka server instance.

## Tests

Tests can be found in the `test` folder. They've been written using `judge`.
It can be installed with `jpm install https://github.com/ianthehenry/judge`.

## License

MIT - see the `LICENSE` file for details.
