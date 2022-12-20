 // select all elements
const start = document.getElementById("start");
const quiz = document.getElementById("quiz");
const question = document.getElementById("question");
const qImg = document.getElementById("qImg");
const choiceA = document.getElementById("A");
const choiceB = document.getElementById("B");
const choiceC = document.getElementById("C");
const counter = document.getElementById("counter");
const timeGauge = document.getElementById("timeGauge");
const progress = document.getElementById("progress");
const scoreDiv = document.getElementById("scoreContainer");

// create our questions
let questions = [
    {
        question : "Seberapa sulit anda bersosialisi?",
        imgSrc : "img/sosial.png",
        choiceA : "Sulit sekali",
        choiceB : "Biasa saja",
        choiceC : "Mudah",
        correct : "A"
    },{
        question : "Bagaimana kualitas tidur anda?",
        imgSrc : "img/tidur.jpg",
        choiceA : "Sulit, jam tidur saya berantakan",
        choiceB : "Sangat baik",
        choiceC : "Saya bisa tidur dengan baik jika saya ingin melakukannya",
        correct : "A"
    },{
        question : "Seberapa fokus anda dalam melakukan sesuatu?",
        imgSrc : "img/fokus.jpg",
        choiceA : "Saya fokus terhadap saya lakukan",
        choiceB : "saya bisa untuk fokus",
        choiceC : "Saya sangat mudah untuk terganggu",
        correct : "C"
    },{
        question : "Seberapa banyak anda menyukai diri sendiri?",
        imgSrc : "img/love.jpg",
        choiceA : "Tentu, saya sangat mencintai diri sendiri",
        choiceB : "Saya merasa insecure di bagian tertentu",
        choiceC : "Saya benci diri saya",
        correct : "C"
	},{
        question : "Apakah anda merasa senang?",
        imgSrc : "img/happy.jpg",
        choiceA : "Tentu",
        choiceB : "hm, saya tidak yakin",
        choiceC : "tidak",
        correct : "C"
	},{
        question : "Apakah anda merasa kesepian?",
        imgSrc : "img/alone.jpg",
        choiceA : "Tidak",
        choiceB : "Iya",
        choiceC : "Hidup saya berwarna",
        correct : "B"
	},{
        question : "Apakah anda tertarik melihat ini?",
        imgSrc : "img/die.jpg",
        choiceA : "Tentu",
        choiceB : "hm, saya tidak yakin",
        choiceC : "tidak",
        correct : "A"
	},{
        question : "Seberapa sering anda menangis dalam seminggu ini?",
        imgSrc : "img/cry.jpg",
        choiceA : "Saya menangis ketika menonton film sedih",
        choiceB : "Terlalu sering",
        choiceC : "tidak, saya tidak menangis",
        correct : "B"
	},{
        question : "Apakah anda merasa mudah marah?",
        imgSrc : "img/angry.png",
        choiceA : "Iya",
        choiceB : "hm, saya tidak yakin",
        choiceC : "tidak",
        correct : "A"
	},{
        question : "Apakah anda merasa lelah dengan hidup anda?",
        imgSrc : "img/tired.png",
        choiceA : "harus selalu bersyukur",
        choiceB : "Iya",
        choiceC : "tidak",
        correct : "B"
	}						
];

// create some variables

const lastQuestion = questions.length - 1;
let runningQuestion = 0;
let count = 0;
const questionTime = 10; // 10s
const gaugeWidth = 150; // 150px
const gaugeUnit = gaugeWidth / questionTime;
let TIMER;
let score = 0;

// render a question
function renderQuestion(){
    let q = questions[runningQuestion];
    
    question.innerHTML = "<p>"+ q.question +"</p>";
    qImg.innerHTML = "<img src="+ q.imgSrc +">";
    choiceA.innerHTML = q.choiceA;
    choiceB.innerHTML = q.choiceB;
    choiceC.innerHTML = q.choiceC;
}

start.addEventListener("click",startQuiz);

// start quiz
function startQuiz(){
    start.style.display = "none";
    renderQuestion();
    quiz.style.display = "block";
    renderProgress();
    renderCounter();
    TIMER = setInterval(renderCounter,1000); // 1000ms = 1s
}

// render progress
function renderProgress(){
    for(let qIndex = 0; qIndex <= lastQuestion; qIndex++){
        progress.innerHTML += "<div class='prog' id="+ qIndex +"></div>";
    }
}

// counter render

function renderCounter(){
    if(count <= questionTime){
        counter.innerHTML = count;
        timeGauge.style.width = count * gaugeUnit + "px";
        count++
    }else{
        count = 0;
        // change progress color to red
        answerIsWrong();
        if(runningQuestion < lastQuestion){
            runningQuestion++;
            renderQuestion();
        }else{
            // end the quiz and show the score
            clearInterval(TIMER);
            scoreRender();
        }
    }
}

// checkAnwer

function checkAnswer(answer){
    if( answer == questions[runningQuestion].correct){
        // answer is correct
        score++;
        // change progress color to green
        answerIsCorrect();
    }else{
        // answer is wrong
        // change progress color to red
        answerIsWrong();
    }
    count = 0;
    if(runningQuestion < lastQuestion){
        runningQuestion++;
        renderQuestion();
    }else{
        // end the quiz and show the score
        clearInterval(TIMER);
        scoreRender();
    }
}

// answer is correct
function answerIsCorrect(){
    document.getElementById(runningQuestion).style.backgroundColor = "#0f0";
}

// answer is Wrong
function answerIsWrong(){
    document.getElementById(runningQuestion).style.backgroundColor = "#f00";
}

// score render
function scoreRender(){
    scoreDiv.style.display = "block";
    
    // calculate the amount of question percent answered by the user
    const scorePerCent = Math.round(100 * score/questions.length);
    
    // choose the image based on the scorePerCent
    let img = (scorePerCent >= 80) ? "img/1.png" :
              (scorePerCent >= 60) ? "img/2.png" :
              (scorePerCent >= 40) ? "img/3.png" :
              (scorePerCent >= 20) ? "img/4.png" :
              "img/5.png";
    
    scoreDiv.innerHTML = "<img src="+ img +">";
    scoreDiv.innerHTML += "<p>"+ scorePerCent +"%</p>";
}