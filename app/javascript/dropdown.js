function getType() {
  var x = document.getElementById("bug_types").value;
  var items = ["select From Above DropDown"];
  if (x === "Feature") {
    items = ["New", "Started", "Completed"];
  } else if (x === "Bug") {
    items = ["New", "Started","Resolved"]
  }
  var str = ""
  for (var item of items) {
    str += "<option>" + item + "</option>"
  }
  document.getElementById("bug_statuses").innerHTML = str;
}