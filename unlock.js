// Check if user has unlocked
const unlocked = localStorage.getItem("mahjong_unlocked") === "true";

function showPremium() {
const premiumListing = document.getElementById("listing-premium-listing");
const premiumContent = document.getElementById("premium-content");

if (premiumListing) {
  premiumListing.style.display = "block";
}

if (premiumContent) {
  premiumContent.style.display = "block";
}

document.getElementById("unlock-section").style.display = "none";
}

function validateCode() {
const codeInput = document.getElementById("code-input").value.trim();
if (validCodes.includes(codeInput)) {
localStorage.setItem("mahjong_unlocked", "true");
showPremium();
alert("Unlocked! Enjoy the full course.");
} else {
alert("Invalid code. Please check your email or contact support.");
}
}

document.addEventListener("DOMContentLoaded", () => {
if (unlocked) showPremium();
});