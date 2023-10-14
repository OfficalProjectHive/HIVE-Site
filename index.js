function openGame() {
    var page = new ABC({
        "type": "blank",
        "url": atob("aHR0cHM6Ly9lZHVjYXRpb24uZnIudG8=")
    })
    page.setType("blank")
    page.setUrl(atob("aHR0cHM6Ly9lZHVjYXRpb24uZnIudG8="))
    console.log(page.getCode())
    page.open()
    window.close
}

function openHome() {
    var page = new ABC({
        "type": "blank",
        "url": "https://projecthive.fr.to/"
    })
    page.setType("blank")
    page.setUrl("https://projecthive.fr.to/")
    console.log(page.getCode())
    page.open()
    window.close
}

function openTesting() {
    location.href = "https://projecthive.fr.to/subpages/loader.html"
}
