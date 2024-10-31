function getComputerChoice() {
    const choices = ["rock", "paper", "scissors"];
    const randomIndex = Math.floor(Math.random() * choices.length);
    return choices[randomIndex];
}

let humanScore = 0;
let computerScore = 0;

function playRound(humanChoice) {
    const computerChoice = getComputerChoice().toLowerCase();

    if (humanChoice === computerChoice) {
        return "It's a tie!";
    }
    else if (humanChoice === "rock" && computerChoice === "scissors" ||
             humanChoice === "paper" && computerChoice === "rock" ||
             humanChoice === "scissors" && computerChoice === "paper") {
        humanScore++;
        return `You win! ${humanChoice.charAt(0).toUpperCase() + humanChoice.slice(1)} beats ${computerChoice}`;
    }
    else {
        computerScore++;
        return `You lose! ${computerChoice.charAt(0).toUpperCase() + computerChoice.slice(1)} beats ${humanChoice}`;
    }
}

function playGame(humanChoice) {
    const result = playRound(humanChoice.toLowerCase());
    document.getElementById("result").textContent = result;
    document.getElementById("human-score").textContent = `${humanScore}`;
    document.getElementById("computer-score").textContent = `${computerScore}`;
}

document.getElementById("rock").addEventListener("click", () => playGame("rock"));
document.getElementById("paper").addEventListener("click", () => playGame("paper"));
document.getElementById("scissors").addEventListener("click", () => playGame("scissors"));

function resetGame() {
    humanScore = 0;
    computerScore = 0;
    document.getElementById("result").textContent = "Game reset!";
    document.getElementById("human-score").textContent = "0";
    document.getElementById("computer-score").textContent = "0";
}

document.getElementById("reset").addEventListener("click", resetGame);
