

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-primary" data-collapsed="0">
      <div class="panel-heading">
        <div class="panel-title">
          Classified Categories
        </div>
      </div>
      <div class="panel-body">
        <table class="table table-bordered datatable">
          <thead>
            <tr>
              <th width="80"><div>#</div></th>
              <th><div>Classified</div></th>
              <th><div>Category</div></th>
              <th><div>Thumbnail</div></th>
              <th><div>Action</div></th>
            </tr>
          </thead>
          <tbody id = "listing_table">
            <?php
            // $counter = 0;
            // foreach ($listings as $listing):
              //$user_details = $this->user_model->get_all_users($listing['user_id'])->row_array();?>
              <tr>
                <td>
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="listings_id" value="<?php echo $listing['id']; ?>" class="custom-control-input checkMark" id="<?php //echo $counter; ?>">
                      <label class="custom-control-label" for="<?php //echo $counter; ?>">
                        <?php //echo ++$counter; ?>
                      </label>
                    </div>
                  </div>
                </td>
                <td>
                  <strong>
                      <?php //echo $listing['sub_name']; ?>
                  </strong>
                </td>
                <td>
                  <strong>
                      <?php //echo $listing['name']; ?>
                  </strong>
                </td>
                <td>
                 <strong>
                      <img src="<?php //echo base_url('uploads/classified_category_tumbnail/').$listing['banner']; ?>" style="height: 100px;width: 100px;">
                  </strong>
                </td>
                
                <td class="text-center">
                  <div class="bs-example">
                    <div class="btn-group">
                      <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                        <?php echo get_phrase('action'); ?> <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu dropdown-blue" role="menu">
                        <li><a href="<?php echo get_listing_url($listing['id']); ?>"><?php echo get_phrase('view_in_website'); ?></a></li>
                        <li><a href="<?php echo site_url('admin/listing_form/edit/'.$listing['id']); ?>"><?php echo get_phrase('edit'); ?></a></li>
                        <?php if ($listing['status'] == 'pending'): ?>
                          <li><a href="javascript::" onclick="confirm_modal('<?php echo site_url('admin/listings/make_active/'.$listing['id']); ?>', 'generic_confirmation');"><?php echo get_phrase('mark_as_active'); ?></a></li>
                        <?php else: ?>
                          <li><a href="javascript::" onclick="confirm_modal('<?php echo site_url('admin/listings/make_pending/'.$listing['id']); ?>', 'generic_confirmation');"><?php echo get_phrase('mark_as_pending'); ?></a></li>
                        <?php endif; ?>

                        <?php if ($listing['is_featured'] == 1): ?>
                          <li><a href="javascript::" onclick="confirm_modal('<?php echo site_url('admin/listings/make_none_featured/'.$listing['id']); ?>', 'generic_confirmation');"><?php echo get_phrase('remove_from_featured'); ?></a></li>
                        <?php elseif($listing['is_featured'] == 0): ?>
                          <li><a href="javascript::" onclick="confirm_modal('<?php echo site_url('admin/listings/make_featured/'.$listing['id']); ?>', 'generic_confirmation');"><?php echo get_phrase('mark_as_featured'); ?></a></li>
                        <?php endif; ?>
                        <li class="divider"></li>
                        <li><a href="javascript::" onclick="confirm_modal('<?php echo site_url('admin/listings/delete/'.$listing['id']); ?>');"><?php echo get_phrase('delete'); ?></a>
                        </li>
                      </ul>
                    </div>
                  </div>

                  <!-- Single button -->
                  <div class="dropright dropright">
                    <button type="button" class="btn btn-sm btn-outline-primary btn-rounded btn-icon" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="mdi mdi-dots-vertical"></i>
                    </button>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="<?php echo site_url('admin/listing_form/edit/'.$listing['id']); ?>"><?php echo get_phrase('edit'); ?></a></li>



                      <li><a class="dropdown-item" href="<?php echo get_listing_url($listing['id']); ?>" target="_blank"><?php echo get_phrase('view_in_website'); ?></a></li>
                      <li role="separator" class="divider"></li>
                      <li><a class="dropdown-item" href="#" onclick="confirm_modal('<?php echo site_url('admin/listings/delete/'.$listing['id']); ?>');"><?php echo get_phrase('delete'); ?></a></li>
                    </ul>
                  </div>
                </td>
              </tr>
            <?php //endforeach; ?>
          </tbody>
        </table>
        <button class="btn btn-danger" id="delete_listings" style="display: none;"><?php echo get_phrase('delete_selected'); ?></button>
      </div>
    </div>
  </div><!-- end col-->
</div>

<script type="text/javascript">
function filterTable() {
  $('#preloader_gif').show();
  update_date_range();
  var status = $('#status_filter').val();
  var user = $('#user_filter').val();
  var date_range = $('#date_range').val();

  $.ajax({
    type : 'POST',
    url : '<?php echo site_url('admin/filter_listing_table'); ?>',
    data : {status : status, user : user, date_range : date_range},
    success : function(response){
      $('#listing_table').html(response);
      $('#preloader_gif').hide();
      $(function () {
        $('[data-toggle="tooltip"]').tooltip()
      })
    }
  })
}

function update_date_range()
{
  var x = $("#selectedValue").html();
  $("#date_range").val(x);
}
</script>


<script>
//start multiple delete
$(document).ready(function() {
  $(".checkMark").click(function(){

    //for button hide and show
    var favorite = [];
    $.each($("input[name='listings_id']:checked"), function(){
      favorite.push($(this).val());
    });
    if(favorite != ''){
      $('#delete_listings').show();
      $('#delete_listings').animate({
        width: '200px'
      }, 300);

    }else{
      $('#delete_listings').animate({
        width: '130px'
      }, 300);
      $('#delete_listings').slideUp(80);
    }

    //for delete to database
    $('#delete_listings').click(function(){
      var vals = [];
      $(":checkbox").each(function() {
        if (this.checked)
        vals.push(this.value);
      });
      var listings_id = vals.toString();
      $.ajax({
        url: '<?php echo site_url('admin/listings/listings_delete/'); ?>'+ listings_id,
        success: function(response){
          location.reload();
        }
      });
    });
  });
});
</script>
