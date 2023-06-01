function PlaySound(soundtrack) {
    var audio = document.getElementById(soundtrack);
    audio.loop = true;
    audio.play();
}

function OpenSmallWindow(event, instrument) {
    var newWindow = window.open('HTML Pages/' + instrument + '.html', instrument, 'left=' + (event.clientX + 50) + 'px , top=' + (event.clientY - 50) + 'px,height=200px, width=300px, scrollbars=auto, resizable=no, location=no, status=no');
}