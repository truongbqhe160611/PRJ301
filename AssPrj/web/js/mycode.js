/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function ChangeImg(img, options) {
    var link = img.src;
    if (options == 1) {
        img.setAttribute('src', '../images/miquang02.jpg');
    } else {
        img.setAttribute('src', '../images/spingroll02.jpg');
    }
    img.onmouseout = function() {
        img.setAttribute('src', link);
    };
}
