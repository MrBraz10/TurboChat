const { app, BrowserWindow } = require("electron");

MAC_OS = "darwin";

const createWindow = () => {
    const win = new BrowserWindow({
        width: 800,
        height: 600,
    });
    try {
        const developmentURL = "http://localhost:3000";
        win.loadURL(developmentURL);
    } catch (error) {
        console.error(error);
    }
};

app.whenReady().then(createWindow);

app.on("window-all-closed", () => {
    if (process.platform !== MAC_OS) {
        app.quit();
    }
});