function ChangeTown(town)
{
    window.open('../HTML Pages/' + town + '.html', town, 'top=300px,left=1200px,height=200px, width=350px, scrollbars=auto, resizable=no, location=no, status=no');

    document.getElementById('iframe').src = 'https://naslovi.net/vremenska-prognoza/' + town.split(" ").join("-").toLowerCase();;
}