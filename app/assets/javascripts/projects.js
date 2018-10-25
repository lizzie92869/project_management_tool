
//= require_self
//= require_tree ./channels


function openProjects(e) {
	e.preventDefault();
	console.log("hello1")
	$(".projects-content-box").removeClass("hidden");
	$(".contacts-content-box").addClass("hidden");
	$(".clients-content-box").addClass("hidden");
	$(".team-mates-content-box").addClass("hidden");
	$(".calendar-content-box").addClass("hidden");
	console.log("hello2")
	debugger
	attachOpenProject()
}

function attachOpenContactsforCompany() {
	debugger
	console.log("hello3")
	$(".project-name").on("click", findProject);
	debugger
}

function findProject(e){
	debugger
	let dynamicClassProjectId = e.target.className.split(' ')[0]
	e.preventDefault();
	// remove the hidden class for the names that are from this company
	$(`.${dynamicClassProjectId}-info`).removeClass("hidden");
	// attachHideFilteredContactsforCompany()
}