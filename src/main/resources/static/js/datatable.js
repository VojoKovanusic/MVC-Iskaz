$(document).ready( function () {
	 var table = $('#odjeliTable').DataTable({
			"sAjaxSource": "/odjeli",
			"sAjaxDataProp": "",
			"order": [[ 0, "asc" ]],
			"aoColumns": [
				{ "mData": "id_odjela" },
				{ "mData": "brojOdjela"}
				
				  
			]
	 })
});

$("#myTable").DataTable({
    "data": data,
    "columns": [
        { 
            "title": "brojOdjela",
            "data": "brojOdjela"
        }, { 
            "title": "id_odjela",
            "data": "id_odjela" 
        } , { 
            "title": "odsjeci",
            "data": "listaOdsjeka",
            "render": function(d){
                if(d !== null){
                    var table = "<table>";
                    $.each(d, function(k, v){
                        table += "<tr><td>" + v.brojOdsjeka + "</td><td>" + v.knigaPremjerdbe + "</td><td>" + v.knjigaDoznake + "</td></tr>";
                    });
                    return table + "</table>";
                }else{
                    return "";
                }
            }
        }
    ]
});