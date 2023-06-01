function PlaySound(sound) {
    var a = document.getElementById(sound);
    a.loop = true;
    a.play();
}


function SmallWindowOpen(event, animal) {
    var newWindow = window.open('../HTML Pages/' + animal + '.html', animal, 'left=' + (event.clientX - 150) + 'px , top=' + (event.clientY + 200) + 'px,height=200px, width=300px, scrollbars=auto, resizable=no, location=no, status=no');
}
