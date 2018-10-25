//= require_self
//= require_tree ./channels

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
	$(".calendar-content-box").addClass("hidden");
}

function myMap() {
var mapProp= {
    center:new google.maps.LatLng(51.508742,-0.120850),
    zoom:5,
};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}


// for the Contact page
function openContacts(e) {
	e.preventDefault();
	$(".contacts-content-box").removeClass("hidden");
	$(".projects-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
	$(".calendar-content-box").addClass("hidden");
	attachOpenContactsforCompany()
}

function attachOpenContactsforCompany() {
	$(".company-name").on("click", filterContactList);
}

function filterContactList(e){
	let dynamicClassCompanyName = e.target.className.split(' ')[0]
	e.preventDefault();
	// remove the hidden class for the names that are from this company
	$(`.${dynamicClassCompanyName}-contact`).removeClass("hidden");
	attachHideFilteredContactsforCompany()
}

function attachHideFilteredContactsforCompany(){
	$(".company-name").on("click", hideContactList);
}

function hideContactList(e){
	let dynamicClassCompanyName = e.target.className.split(' ')[0]
	e.preventDefault();
	// add the hidden class for the names that are from this company
	$(`.${dynamicClassCompanyName}-contact`).addClass("hidden");
	attachOpenContactsforCompany()
}







function openProjects(e) {
	e.preventDefault();
	$(".projects-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
	$(".calendar-content-box").addClass("hidden");
}