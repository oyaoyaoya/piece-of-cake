$(function(){
  $(".new-post").on("click", function(){

  $("#modal-content").fadeIn("slow");
  $("#modal-overlay").fadeIn("slow");
  })

  $("#modal-overlay,#modal-close").click(function(){
    $("#modal-content,#modal-overlay").fadeOut("slow")
});
});
