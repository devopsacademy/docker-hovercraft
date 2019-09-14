# docker-hovercraft
`hovercraft` powered by docker

## Howto

A very minimalistic howto...

```bash
$ docker pull devoaca/hovercraft
```

```bash
$ mkdir -p ~/bin
$ wget https://raw.githubusercontent.com/devopsacademy/docker-hovercraft/master/hovercraft -O ~/bin/hovercraft -o /dev/null
$ chmod 700 ~/bin/hovercraft
$ export PATH="${HOME}/bin:${PATH}"
```

```bash
$ hovercraft
```

```
$ presentation my-presentation.rst
```
