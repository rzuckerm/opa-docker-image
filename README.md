[![Makefile CI](https://github.com/rzuckerm/opa-docker-image/actions/workflows/makefile.yml/badge.svg)](https://github.com/rzuckerm/opa-docker-image/actions/workflows/makefile.yml)

# opa-docker-image

Docker image for [Opa programming language](http://opalang.org/):

- rzuckerm/opa:`<version>-<tag>`

where:

- `<version>` is the [Opa version](OPA_VERSION)
- `<tag>` is the current GitHub tag without the "v"

The docker image can be found [here](https://hub.docker.com/r/rzuckerm/opa).

## Building and running opa program

Start a shell in the same directory as the opa program:

```
docker run -it --rm -v $(pwd):/local -w /local rzuckerm/opa:<version>-<tag> bash
```

Build the opa program:

```
opa <program_name>.opa
```

where:

- `<program_name>` is the program name without the `.opa` extension

Run the opa program:

```
run_opa <program_name>.js <args>
```

where:

- `<args>` are the program arguments (if any)

Their will make a request to `http://localhost:8080` with the following parameters:

- `argc` is the number of program arguments.
- `argv<n>` is the nth program argument. The value is URI encoded.

The opa program is expected to output text wrapped in a `<pre>` tag. For example,
the [Hello World](hello_world.opa) outputs `<pre>Hello, world!</pre>`, and the
request is `http://localhost:8080?argc=0`.
