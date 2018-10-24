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

// For the Team Mates page

function openTeamMates(e) {
	e.preventDefault();
	$(".team-mates-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".projects-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".calendar-content-box").addClass("hidden");
	attachOpenTeamMatesForDepartment()
}

function attachOpenTeamMatesForDepartment() {
	$(".department-name").on("click", filterTeamMatesList);
}

function filterTeamMatesList(e){
	e.preventDefault();
	console.log("hello")
	// let dynamicClassDepartmentName = e.target.className.split(' ')[0]
	// e.preventDefault();
	// // remove the hidden class for the names that are from this department
	// $(`.${dynamicClassDepartmentName}-contact`).removeClass("hidden");
	// attachHideFilteredTeamMatesforDepartment()
}

// function attachHideFilteredTeamMatesforDepartment(){
// 	$(".department-name").on("click", hideTeamMatesList);
// }

// function hideTeamMatesList(e){
// 	let dynamicClassDepartmentName = e.target.className.split(' ')[0]
// 	e.preventDefault();
// 	// add the hidden class for the names that are from this company
// 	$(`.${dynamicClassDepartmentName}-contact`).addClass("hidden");
// 	attachOpenTeamMatesForDepartment()
// }






function openProjects(e) {
	e.preventDefault();
	$(".projects-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
	$(".calendar-content-box").addClass("hidden");
}