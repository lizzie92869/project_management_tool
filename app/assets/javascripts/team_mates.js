// //= require_self
// //= require_tree ./channels
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
