<div class="price">
	<h5 class="d-inline"><?php echo get_phrase('appointment'); ?></h5>

</div>

<div class="form-group" id="input-dates">
	<input class="form-control date-picker" type="text" name="dates" placeholder="<?php echo get_phrase('when'); ?>.." required>
	<i class="icon_calendar"></i>
</div>

<div class="form-group">
	<select class="form-control" name="service" id="service" required>
		<option value=""><?php echo get_phrase('select_a_service'); ?></option>
		<?php
		 	$services = $this->db->get_where('beauty_service', array('listing_id' => $listing_id))->result_array();
		  	foreach($services as $service){
		  		$times = explode(',', $service['service_times']);
		  		$time_from = strtotime($times[0].":00");
                $time_to   = strtotime($times[1].":00");
		?>
			<option value="<?php echo $service['id']; ?>">
				<?php echo $service['name']; ?>
				<?php echo '('.date('h:i A', $time_from).' - '.date('h:i A', $time_to).')'; ?>
			</option>
		<?php } ?>
	</select>
</div>

<div class="form-group">
	<input id="timepicker" onchange="checkTime()" name="time" placeholder="00:00" width="100%" required>
    <script>
        $('#timepicker').timepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>
</div>

<div class="form-group">
	<textarea name="note" class="form-control" placeholder="<?php echo get_phrase('note'); ?>" style="height: 80px;" required></textarea>
</div>

<script>
	$('document').ready(function(){
		$('#service').show();
	});
	function checkTime(){
		var booking_time = $('#timepicker').val();
		var service_id = $('#service').val();
		if(service_id != "" && booking_time != ""){
			$.ajax({
				url: "<?php echo site_url('home/beauty_service_time/'); ?>"+service_id+"/"+booking_time,
				success: function(response){
					if(response != 1){
						$('#timepicker').val('');
						toastr.error('The time must be between opening and closing time.');
					}
				}
			});
		}
	}
</script>