console.log("We've got Javascript!");

function resize(event) {
  event.target.style.width ="200px";
  event.target.style.height ="200px";
}

function addBorder(event) {
  event.target.style.border = "2px solid green";
}

var image = document.getElementById("puppy");
var words = document.getElementById("words");

image.addEventListener("mouseover", resize);
words.addEventListener("click", addBorder);

var caption = document.createElement('p');
var ParaText = document.createTextNode("This is Sam the Samoyed.");

caption.appendChild(ParaText);

var imageCaption = document.getElementById('image-space');
imageCaption.appendChild(caption);



// onmouseover="image.width='200'; image.height='200';"
// onmouseout="image.width='800'; image.height='800';"