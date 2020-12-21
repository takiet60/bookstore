const slidePage = document.querySelector(".slidepage")
const nextBtn = document.querySelector(".nextBtn")
const prevBtnSec = document.querySelector('.prev-1');
const nextBtnSec = document.querySelector('.next-1');
const prevBtnThird = document.querySelector('.prev-2');
const nextBtnThird = document.querySelector('.next-2');
const prevBtnFourth = document.querySelector('.prev-3');
const submitBtn = document.querySelector('.submit');
const progressText = document.querySelector('.step-cr p')
const progressBullet = document.querySelector('.step-cr .bullet')
let max = 4;
let current = 1;


nextBtn.addEventListener('click', () => {
    slidePage.style.marginLeft = "-25%";
    progressBullet[current - 1].classList.add('active')
    current += 1;
})

nextBtnSec.addEventListener('click', () => {
    slidePage.style.marginLeft = "-50%"
})

nextBtnThird.addEventListener('click', () => {
    slidePage.style.marginLeft = "-75%"
})

prevBtnSec.addEventListener('click', () => {
    slidePage.style.marginLeft = "0%"
})

prevBtnThird.addEventListener('click', () => {
    slidePage.style.marginLeft = "-25%"
})

prevBtnFourth.addEventListener('click', () => {
    slidePage.style.marginLeft = "-50%"
})