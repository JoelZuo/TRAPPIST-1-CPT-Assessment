function signup(event) {
    event.preventDefault();
    var username = document.getElementById("signupUsername").value;
    var password = document.getElementById("signupPassword").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    if (password != confirmPassword) {
        document.getElementById("signupMessage").textContent = "Passwords do not match.";
        return;
    }

    localStorage.setItem("username", username);
    localStorage.setItem("password", password);
    document.getElementById("signupMessage").textContent = "Account created!";

    setTimeout(function() {
        window.location.href = "login.html";
    }, 1000);
}

function login(event) {
    event.preventDefault();
    var username = document.getElementById("loginUsername").value;
    var password = document.getElementById("loginPassword").value;

    var savedUsername = localStorage.getItem("username");
    var savedPassword = localStorage.getItem("password");

    if (username == savedUsername && password == savedPassword) {
        window.location.href = "index.html";
    } else {
        document.getElementById("loginMessage").textContent = "Incorrect username or password.";
    }
}

document.addEventListener("DOMContentLoaded", () => {
    const planetName = document.body.dataset.planet || "TRAPPIST-1b";

    if (typeof planetDatabase === "undefined") {
        console.error("planet-data.js was not loaded properly.");
        return;
    }

    const planet = planetDatabase.find(p => p.Planet === planetName);

    if (!planet) {
        console.error("No data found for planet:", planetName);
        return;
    }

    setVal("yearLength", planet["Year Length (days)"], " days");
    setVal("dayLength", planet["Day Length (days)"], " days");
    setVal("temperature", planet["Temperature (K)"], " K");
    setVal("windSpeed", planet["Wind Speed"]);
    setVal("gravity", planet["Gravity (Earth)"]);
    setVal("radius", planet["Radius (Earths)"]);
    setVal("diameter", planet["Diameter (km)"] ? planet["Diameter (km)"].toLocaleString() + " km" : null);
    setVal("mass", planet["Mass (Earths)"]);
    setVal("atmosphere", planet["Atmosphere"]);
    setVal("composition", planet["Composition"]);
    setVal("waterPresence", planet["Water"]);
    setVal("planetType", planet["Planet Type"]);
    setVal("habitability", planet["Habitability"]);
});

function setVal(id, value, suffix = "") {
    const el = document.getElementById(id);
    if (el) {
        el.textContent = (value !== undefined && value !== null) ? `${value}${suffix}` : "--";
    }
}