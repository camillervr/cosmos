let titles = ['stay', 'party', 'relax', 'love'];
let currentIndex = 0;
let aSpan = document.getElementById('actions');

setInterval(() => {

   aSpan.innerHTML= titles[currentIndex];

   currentIndex++;

   if (currentIndex === 4)
    currentIndex = 0;

}, 1000)
