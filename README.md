# Elm + Electron example

Example app built with [Elm](http://elm-lang.org) and [electron](http://electron.atom.io)
(based on [elecron-quick-start](https://github.com/atom/electron-quick-start)).

Both the [*Renderer Process*](http://electron.atom.io/docs/latest/tutorial/quick-start/#renderer-process)
and the [*Main Process*](http://electron.atom.io/docs/latest/tutorial/quick-start/#main-process) was implemented in Elm.
Also this example shows how to pass [*Signal*s](http://elm-lang.org/guide/reactivity) from *Main Process* to *Renderer* using
[*IPC*](https://github.com/atom/electron/blob/master/docs/api/ipc-main.md).

### Building and running

```shell
$ npm install && npm start
```

