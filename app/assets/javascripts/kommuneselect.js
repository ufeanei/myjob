$(function(){
	all_kommunes = $('#job_kommune_id').html();
	
    $('#job_kommune_id').html("<option> Velg Kommune </option>"); // when the form is submitted, the child select should show just one option velg kommune

	$('#job_fylke_id').on('change', function(){                              
       
		selected_fylke = $('#job_fylke_id option:selected').text();
		optgroup = "optgroup[label='" + selected_fylke + "']";
	    options = "<option> Velg Kommune </option>"+ $(all_kommunes).filter(optgroup).html();  // we want the first option to be Velg kommune
 
        $('#job_kommune_id').html(options);

   console.log(options)

       
	
	});

})
//explanations

// 1 the child select tag is originally constructed to to show all kommunes in select options. grab all of them and store in all_kommunes

// 2 next listen for a change event on the parent select. this happens when a user selects a fylke.

// if theere is a change event run the call back function by doing the following 
    // get the name of the fylke selected. store it in selected_fylke
    // construct the html optgroup with a label that has the name of the fylke the user selected_fylke
    //go into all_kommunes and filter out only the optgroup with the labels constructed then grab the html content of the filter
    // use this html content in the last step to reset what will be displayed in the child select as pull down options. 