
<%@ include file="header2.jsp" %>


<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	var searchParams = new URLSearchParams(window.location.search);
	var id_search=searchParams.get('id');

	var url_id="/song/test?id="+id_search;
	
	  $.ajax({
      	url: url_id, 
      	success: function(result){
      		var obj = jQuery.parseJSON(result);
      		
          $(".number_text").html(obj.id);
          $(".Cooming_soon_taital").html(obj.title);
          
          $(".long_text_1").html(obj.artist);
          var player = new Playerjs({
				 id:"player1",
				 file:obj.mp3, 
				 poster:obj.img,
				 title:obj.title
				 });
        }});
})
</script>
  
  
   <!-- cooming  section start -->
      <div class="cooming_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
				<div id="player1" style="margin-top: 18%">
              
				</div>  
				
               </div>
               <div class="col-md-6">
                  <h1 class="number_text"></h1>
                  <h1 class="Cooming_soon_taital"></h1>
                  <p class="long_text_1"></p>
                  <div class="paly_bt"><a href="#">Play Now</a></div>
               </div>
            </div>
         </div>
      </div>
        
    <div id="login-div">

</div>
      
      <!-- cooming  section end -->
   <%@ include file="footer.jsp" %>