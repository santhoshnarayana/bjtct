$(document).ready(function(){
console.log("loading aviators .......");

//gets the record for given teamMember
var getNextRecord=function(teamId,teamMemberId){
$.ajax({
method:'GET',
url:"getNextTeamMember.sec",
contentType: "application/json; charset=utf-8",
data:{teamId:teamId,teamMemberId:teamMemberId},
success:function(data){
var data = jQuery.parseJSON(data);

if(data.teamId!==null && data.mName!==null) {
$('#headName').text(data.mName+' '+data.surName);

$('#playersPho').attr('src','data:image/png;base64,'+data.photo);
$('#pname').text(data.mName);
$('#surname').text(data.surName);
$('#dob').text(data.dob);
$('#age').text(data.age);
$('#residential-area').text(data.recidence);
$('#profesion').text(data.profession);
$('#merital-status').text(data.meritalStatus);
$('#aniversary').text(data.aniversary);
$('#blood-group').text(data.bloodGroup);
$('#social-involvement').text(data.socialInvolveMent);
$('#contact').text(data.contact);
//console.log(data.mName);
return true;
}
else {
return false;
}

}

});
};

var teamId = $('#teamId').val();
var record = 1;
getNextRecord(teamId,record);

$('#next-record').click(function(){
var maxRecords = $('#totalRecordCount').val();
var teamId = $('#teamId').val();
if(record<=maxRecords){
record++;
getNextRecord(teamId,record);
}
else{
//todo image dim for maxrecords reached
}
});

$('#prev-record').click(function(){
var teamId = $('#teamId').val();
if(record!=0){
record--;
getNextRecord(teamId,record);
}else{
//todo hide image
}

});


});