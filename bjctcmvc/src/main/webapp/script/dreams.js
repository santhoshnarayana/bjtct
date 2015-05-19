$(document).ready(function(){
console.log("loading dreams .......");

//gets the record for given teamMember
var getNextRecord=function(teamId,teamMemberId){
$.ajax({
method:'GET',
url:"getNextTeamMember.sec",
contentType: "application/json; charset=utf-8",
data:{teamId:teamId,teamMemberId:teamMemberId},
success:function(data){
var data = jQuery.parseJSON(data);


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
}

});
}


getNextRecord(1,1);

$('#next-record').click(function(){
getNextRecord(1,2);

});


});