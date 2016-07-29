$(window).on("load", function() {
  $("#new_rental").change( function(){
      var selectVal = $("#rental_door_state").val();
      $(".selected").removeClass("selected");
      if (selectVal == 0){
        $(".door_state_0").addClass("selected");
        $(".open_class div").hide();
        $(".door_state_0").show();
      } else if (selectVal == 1){
        $(".door_state_1").addClass("selected");
        $(".open_class div").hide();
        $(".door_state_1").show();
      } else if (selectVal == 2){
        $(".door_state_2").addClass("selected");
        $(".open_class div").hide();
        $(".door_state_2").show();
      }
  });
});