<div class="container margin_60" style="margin-top: 3em;">
	<h2><center>Add Listing</center></h2>
	<div class="row justify-content-center" style="margin-top: 4em;">
		<div class="col-xl-8 col-lg-8 col-md-8">
			<div class="box_account">	
				<form class="" action="<?php echo site_url('Home/insert_list'); ?>" method="post" enctype="multipart/form-data">
					<div class="form_container">
						<div class="divider"><span><?php echo "Business Details"; ?></span></div>
						<div class="form-group">
							<label>Business Name</label>
							<input type="web" class="form-control" name="business_name" id="name" placeholder="Business Name">
						</div>
						<div class="form-group">
							<label>Phone Number</label>
							<input type="tel" class="form-control" name="business_telephone" id="name" placeholder="Phone Number">
						</div>
						<div class="form-group">
							<label>Email</label>
							<input type="Email" class="form-control" name="business_email" id="business_email" placeholder="Email Address">
						</div>
						<div class="form-group">
							<label>City</label>
							<input type="text" class="form-control" name="city" id="city" placeholder="City">
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea rows="4" class="form-control" name="address" placeholder="Business Address"></textarea>
						</div>
						
						<div class="form-group">
							<label>Category</label>
							<select class="js-example-basic-single" name="category" data-allow-clear="true" data-placeholder="category" style="width: 100%;">
							  <option value="0" disabled><?php echo "Categoty"; ?></option>
                                <?php 
                                	foreach ($categories as $value) {?>
                                	<option value="<?php echo $value->id ?>"><?php echo $value->sub_name ?></option>
                            	<?php } ?>
							</select>
						</div>

						
						<div class="form-group">
							<label>Description</label>
							<textarea rows="10" class="form-control" placeholder="Provide Description of Business"></textarea>
						</div>

						<div class="form-group">
							<label>Price</label>
							<input type="text" class="form-control" name="price" id="price" placeholder="Price in $US">

						</div>
						
						
						<div class="form-group">
							<label>Pictures</label>
							<div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Picture</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" class="custom-file-input" name="picture1[]" 
							      aria-describedby="inputGroupFileAddon01" multiple>
							    <label class="custom-file-label" for="inputGroupFile01">Choose Pictures</label>
							  </div>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="col-md-12 mb-2"  style="margin-top: 30px;">
								<input type="submit" value="Submit" class="btn_1 w-100">
							</div>
							
						</div>
					</div>
				
			</div>
		</div>
		
	</div>
	
</div>