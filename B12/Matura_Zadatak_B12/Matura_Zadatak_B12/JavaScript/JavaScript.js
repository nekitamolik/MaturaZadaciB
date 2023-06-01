function ButtonClick(br)
{
    if(document.getElementById('Button'+br).style.backgroundColor == 'green')
        document.getElementsByClassName('brsedista').item(0).value = br;
}