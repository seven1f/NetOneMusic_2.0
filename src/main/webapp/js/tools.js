function getScroll(){
    return {
        scrollLeft : window.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft || 0,
        scrollTop : window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0
    };
}