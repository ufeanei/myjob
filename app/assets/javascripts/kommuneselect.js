$(function(){
	all_kommunes = $('#job_kommune_id').html();
	
        selected_fylke = $('#job_fylke_id option:selected').text();
		optgroup = "optgroup[label='" + selected_fylke + "']";
	    options = "<option> Velg Kommune </option>"+ $(all_kommunes).filter(optgroup).html();  // we want the first option to be Velg kommune
 
        $('#job_kommune_id').html(options);

	$('#job_fylke_id').on('change', function(){                              
       
		selected_fylke = $('#job_fylke_id option:selected').text();
		optgroup = "optgroup[label='" + selected_fylke + "']";
	    options = "<option> Velg Kommune </option>"+ $(all_kommunes).filter(optgroup).html();  // we want the first option to be Velg kommune
 
        $('#job_kommune_id').html(options);
       	
	});

})

//explanations

// 1 the child select tag is originally constructed to show all kommunes in select options. grab all of them and store in all_kommunes

// 2 when the form loads, make sure the dependent select shoulds just the prompt ''Velg kommune''
// if a change event happens in the first select run the callback function. n this fucntion the following happens
//Grab the name showing in the option selected
//use this text to construct optgroup label as showing
//then go to the long list in all_kommunes and filter out the portion with label construchted gets its html content and add it to <option> Velg Kommune </option>,
//update the options for the second select