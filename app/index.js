const Elm = require('./server.js');
const worker = Elm.worker(Elm.Server);

const electron = require('electron');
const app = electron.app;
const BrowserWindow = electron.BrowserWindow;

var mainWindow = null;

app.on('window-all-closed', function() {
  if (process.platform != 'darwin') {
    app.quit();
  }
});

app.on('ready', function() {
    mainWindow = new BrowserWindow({
        useContentSize: true,
        width: 115, height: 18,
        title: "Elmectron",
        type: "splash"
    });

    //mainWindow.webContents.openDevTools();

    mainWindow.setMenu(null);

    mainWindow.loadURL('file://' + __dirname + '/index.html');

    mainWindow.on('closed', function() {
        mainWindow = null;
    });

    worker.ports.sendMessage.subscribe(function(data){
        mainWindow.webContents.send('message', data);
    });
});
