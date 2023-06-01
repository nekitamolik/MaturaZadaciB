function Hover(soundtrack) {
    var audio = document.getElementById(soundtrack);
    audio.loop = true;
    audio.play();
}

function SmallWindow(event, country) {
    var newWindow = window.open('../HTML Pages/' + country + '.html', country, 'left=' + event.clientX + 'px , top=' + event.clientY + 'px,height=200px, width=300px, scrollbars=auto, resizable=no, location=no, status=no');
}