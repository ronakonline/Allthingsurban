<div class="container margin_60" style="margin-top: 3em;">
	<h2><center>Add Listing</center></h2>
	<div class="row justify-content-center" style="margin-top: 4em;">
		<div class="col-xl-8 col-lg-8 col-md-8">
			<div class="box_account">	
				<form class="" action="<?php echo site_url('Home/insert_business'); ?>" method="post" enctype="multipart/form-data">
					<div class="form_container">
						<div class="divider"><span><?php echo "Business Details"; ?></span></div>
						<div class="form-group">
							<input type="web" class="form-control" name="business_name" id="name" placeholder="Business Legal Name" required>
						</div>
						<div class="form-group">
							<textarea rows="4" name="address" class="form-control" placeholder="Business Address" required></textarea>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" name="business_telephone" id="business_telephone" placeholder="Phone Number" required>
						</div>
						<div class="form-group">
							<input type="Email" class="form-control" name="business_email" id="business_email" placeholder="Business Email Address">
						</div>
						<div class="form-group">
							<input type="web" class="form-control" name="website" id="website" placeholder="Business Website" required>
						</div>
						<div class="form-group">
							<textarea rows="5" class="form-control" name="description" placeholder="Description of Business" required></textarea>
						</div>

						<!-- <select name="category" class="js-example-basic-singles" required style="width: 100%;height: 50px;margin-bottom: 10px;">
                            <option value="0" disabled selected><?php echo "Select Category"; ?></option>
                            <?php foreach ($categories as $category){ ?>
                                <option value="<?php echo $category['id']; ?>"><?php echo $category['sub_name']; ?></option>
                            <?php } ?>
                        </select> -->
                        <div class="form-group">
							<input type="web" class="form-control" name="category" id="category" value="<?php echo $category ?>" hidden >
						</div>
						<div class="form-group">
							<input type="web" class="form-control" name="days" id="days" placeholder="Days of Operation" required>
						</div>
						<div class="form-group">
							
                            
                            <select class="js-example-basic-multiple" name="languages[]" multiple="multiple" data-allow-clear="true" data-placeholder="Languages" style="width: 100%;" required>
							  <option value="0" disabled><?php echo "Languages"; ?></option>
                                <option value="Armenian">Armenian</option>
                                <option value="Russian">Russian</option>
                                <option value="Hebrew">Hebrew</option>
                                <option value="Spanish">Spanish</option>
                                <option value="Persian">Persian</option>
                                <option value="Arabic">Arabic</option>
                                <option value="French">French</option>
							</select>
                        	
						</div>
						<div class="form-group">
							<div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Thumbnail</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" name="logo" class="custom-file-input" id="logo"
							      aria-describedby="inputGroupFileAddon01" required>
							    <label class="custom-file-label" for="inputGroupFile01">Choose a Picture</label>
							  </div>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Picture 1</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" name="picture1" class="custom-file-input" id="picture1"
							      aria-describedby="inputGroupFileAddon01" required>
							    <label class="custom-file-label" for="inputGroupFile01">Choose a Picture</label>
							  </div>
							</div>
						</div>
						<div class="input-group">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroupFileAddon01">Picture 2</span>
						  </div>
						  <div class="custom-file">
						    <input type="file" name="picture2" class="custom-file-input" id="picture2"
						      aria-describedby="inputGroupFileAddon01" required>
						    <label class="custom-file-label" for="inputGroupFile01">Choose a Picture </label>
						  </div>
						</div>
						
						
						<!-- <div class="row">
							<div class="col-md-12 mb-2">
								<input type="submit" value="Log In" class="btn_1 w-100">
							</div>
							<div class="col-md-12">
								<a id="sign_up" class="btn_1 full-width outline wishlist icon-login" href="<?php echo site_url('home/sign_up'); ?>"><?php echo get_phrase("sign_up"); ?></a>
							</div>
						</div> -->
					</div>
				
			</div>
		</div>
		
	</div>
	<div class="row justify-content-center" style="margin-top: 2em;">

		<div class="col-xl-8 col-lg-8 col-md-8">
			<div class="box_account">
				
				
					<div class="form_container">
						<div class="divider"><span><?php echo "Personal Details"; ?></span></div>
						<div class="form-group">
							<input type="text" class="form-control" name="full_name" id="name" placeholder="Provide Full Name" required>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" name="telephone" id="name" placeholder="Provide Telephone Number" required>
						</div>
						<div class="form-group">
							<input type="Email" class="form-control" name="email" id="name" placeholder="Provide Email Address" required>
						</div>
					</div>
				
			</div>
		</div>
	</div>

	<div class="row justify-content-center" style="margin-top: 2em;">

		<div class="col-xl-8 col-lg-8 col-md-8">
			<div class="box_account">				
					<div class="form_container">
						<div class="divider"><span><?php echo "How You Hear About Us?"; ?><small>(Optional)</small></span></div>
						<div class="form-group">
							<input type="text" class="form-control" name="ref_business" id="ref_business" placeholder="Provide Business Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="ref_name" id="ref_name" placeholder="Provide Full Name">
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" name="ref_telephone" id="ref_telephone" placeholder="Provide Telephone Number">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-2">
							<input type="submit" value="Submit" class="btn_1 w-100">
						</div>						
					</div>
				</form>
			</div>
		</div>
	</div>
</div>