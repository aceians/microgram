$(function() {
  $('.glyphicon-plus-sign').click(function() {
    $(this).before('<div class="col-lg-2"><input type="tag" class="form-control" id="tag" placeholder="Enter a tag"></div>');
  });
});
 
$(function(){
   Dropzone.autoDiscover= false;
   
   $("#my-dropzone").dropzone({ 
       maxFilesize: 5,
       addRemoveLinks: true,
       paramName: 'upload[image]'
   });
});