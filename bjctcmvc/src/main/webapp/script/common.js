$(document).ready(function() {
    console.log("loading aviators .......");

    //gets the record for given teamMember
    var getNextRecord = function(teamId, teamMemberId) {
        $.ajax({
            method: 'GET',
            url: "getNextTeamMember.sec",
            contentType: "application/json; charset=utf-8",
            data: {
                teamId: teamId,
                teamMemberId: teamMemberId
            },
            success: function(data) {
                var data = jQuery.parseJSON(data);

                if (data.teamId !== null && data.mName !== null) {
                    $('#headName').text(data.mName + ' ' + data.surName);

                    $('#playersPho').attr('src', 'data:image/png;base64,' + data.photo);
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
                } else {
                    return false;
                }

            }

        });
    };

    var teamId = $('#teamId').val();
    var record = $('#firstRecordId').val();
    var count = 1;
    getNextRecord(teamId, record);

    $('#next-record').click(function() {

        $('#prev-record').children().attr('src', '../images/prev.png');
        console.log('clicked next');
        var maxRecords = $('#totalRecordCount').val();
        var teamId = $('#teamId').val();
        if (count < maxRecords) {
            $(this).children().attr('src', '../images/nxt.png');
            record++;
            count++;
            getNextRecord(teamId, record);
        } else {
            //todo image dim for maxrecords reached
            $(this).children().attr('src', '../images/nxtdimm.png');
        }
    });

    $('#prev-record').click(function() {
        $('#next-record').children().attr('src', '../images/nxt.png');
        var teamId = $('#teamId').val();
        if (count != 1) {
            $(this).children().attr('src', '../images/prev.png');
            count--;
            record--;
            getNextRecord(teamId, record);
        } else {
            $(this).children().attr('src', '../images/prevdimm.png');
            //todo hide image
        }

    });



    /**
     * Team statistics page scripts
     * stops upto brk point if brk 0 means all records shows
     */

    var buildRankingTable = function(tabName, brk) {
        var TABLE_TBODY = $('#ratings-body');
        var LAST_ROW = '<tr><td id="all-team-ranks" colspan="3" align="right" style="border-top: 1px solid #ffd419;">Click here to see all Teams</td></tr>';
        TABLE_TBODY.html('');

        $.ajax({
            method: 'GET',
            url: "../team/getRatings.sec",
            contentType: "application/json; charset=utf-8",
            data: {
                tabName: tabName
            },
            success: function(data) {
                var data = jQuery.parseJSON(data);
                console.log(data);
                for (var _i = 0; _i < data.length; _i++) {
                    var row = '<tr><td align="center">' + data[_i].rank + '</td><td>' + data[_i].teamName + '</td><td align="center">' + data[_i].rating + '</td></tr>';
                    TABLE_TBODY.append(row);
                    if (brk != 0 && _i == brk - 1) {
                        TABLE_TBODY.append(LAST_ROW);
                        $('#all-team-ranks').click(function() {
                            buildRankingTable(tabName, 0);
                        });

                        break;
                    }

                }




            }
        });
    }

    $('#team-statsTabLinks').click(function(evnt) {


        var selLi = $(evnt.target);
        var k = selLi.addClass('selected').parent().siblings().children().removeClass('selected');
        console.log(k);
        console.log("[INFO] clicked on:" + selLi.text());

        if (selLi !== undefined) {
            buildRankingTable(selLi.text(), 5);
        }




    });

    var buildFlixtureOrResults = function(tabName, brk) {
        var DIV_ID = $('#fixtures-news');
        var DIV_ID_RESULTS = $('#fixture-results');

        DIV_ID.html('');
        DIV_ID_RESULTS.html('');

        if (tabName == 'Fixtures') {
            $.ajax({
                method: 'GET',
                url: "../team/getSeasonAtGlance.sec",
                contentType: "application/json; charset=utf-8",
                data: {
                    tabName: tabName
                },
                success: function(data) {
                    var data = jQuery.parseJSON(data);
                    console.log(data);
                    for (var _i = 0; _i < data.length; _i++) {
                        var datap = '<p><b>' + data[_i].leftTeamName + ' Vs ' + data[_i].rightTeamName + '</b> at ' + data[_i].venue + '<span>' + data[_i].date + '</span> </p>';


                        DIV_ID.append(datap);

                    }
                }
            });
        } else if(tabName == 'Results') {
            
        $.ajax({
                method: 'GET',
                url: "../team/getSeasonAtGlance.sec",
                contentType: "application/json; charset=utf-8",
                data: {
                    tabName: tabName
                },
                success: function(data) {
                    var data = jQuery.parseJSON(data);
                    console.log(data);
                    for (var _i = 0; _i < data.length; _i++) {
                        var datap = '<p><b>' + data[_i].leftTeamName + ' Vs ' + data[_i].rightTeamName + '</b>  <span>' + data[_i].winningTeamName +'won by '+data[_i].wonBy+'</span> </p>';


                        DIV_ID.append(datap);

                    }
                }
            });

        
        }
        


    };


    $('#team-season-glance').click(function(evnt) {

        var selLi = $(evnt.target);
        var k = selLi.addClass('selected').parent().siblings().children().removeClass('selected');
        console.log(k);
        console.log("[INFO] clicked on:" + selLi.text());

        if (selLi !== undefined) {
            buildFlixtureOrResults(selLi.text(), 5);
        }
    });


    buildRankingTable('Team', 5);
    buildFlixtureOrResults('Fixtures', 5);


    //team statisticks page scripts end 
});