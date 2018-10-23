// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
console.log("console log")
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(function() {
    attachListeners();
});


function attachListeners() {
    $(".clients").on("click", openClients);     
    $(".contacts").on("click", openContacts);
    $(".projects").on("click", openProjects);
    $(".teammates").on("click", openTeamMates);  
}

function openClients(e) {
	e.preventDefault();
	$(".clients-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".projects-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
}

function openContacts(e) {
	e.preventDefault();
	$(".contacts-content-box").removeClass("hidden");
	$(".projects-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
}

function openTeamMates(e) {
	e.preventDefault();
	$(".team-mates-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".projects-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
}

function openProjects(e) {
	e.preventDefault();
	$(".projects-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
}







