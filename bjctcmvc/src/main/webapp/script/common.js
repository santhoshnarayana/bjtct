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
var record = $('#firstRecordId').val();
var count = 1;
getNextRecord(teamId,record);

$('#next-record').click(function(){

$('#prev-record').children().attr('src','../images/prev.png');
console.log('clicked next');
var maxRecords = $('#totalRecordCount').val();
var teamId = $('#teamId').val();
if(count<maxRecords){
$(this).children().attr('src','../images/nxt.png');
record++;
count++;
getNextRecord(teamId,record);
}
else{
//todo image dim for maxrecords reached
$(this).children().attr('src','../images/nxtdimm.png');
}
});

$('#prev-record').click(function(){
$('#next-record').children().attr('src','../images/nxt.png');
var teamId = $('#teamId').val();
if(count!=1){
$(this).children().attr('src','../images/prev.png');
count--;
record--;
getNextRecord(teamId,record);
}else{
$(this).children().attr('src','../images/prevdimm.png');
//todo hide image
}

});


});