$(document).ready(function() {
    var table = $('#example').DataTable();
 
    $('#example tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
 
    $('#button').click( function () {
      var data = table.rows('.selected').data()
      var seleccionados = data.length +' row(s) seleccionado(s)';
      
      var valores = '';
      $(data).each(function(i,v){
        //v[0] tomo la primer columna
        valores += v[0] + '\n';
      })
      
      alert(seleccionados + '\n' + valores);
    } );
    
} );
