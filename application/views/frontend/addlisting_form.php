<div class="container margin_60" style="margin-top: 3em;">
	<h2><center>Add Listing</center></h2>
	<div class="row justify-content-center" style="margin-top: 4em;">
		<div class="col-xl-8 col-lg-8 col-md-8">
			<div class="box_account">	
				<form class="" action="<?php echo site_url('login/validate_login'); ?>" method="post">
					<div class="form_container">
						<div class="divider"><span><?php echo "Business Details"; ?></span></div>
						<div class="form-group">
							<input type="web" class="form-control" name="name" id="name" placeholder="Provide Business Website">
						</div>
						<div class="form-group">
							<textarea class="form-control" placeholder="Provide Business Address"></textarea>
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" name="name" id="name" placeholder="Provide button Phone Number">
						</div>
						<div class="form-group">
							<input type="Email" class="form-control" name="name" id="name" placeholder="Provide Business Email Address">
						</div>
						<div class="form-group">
							<input type="web" class="form-control" name="name" id="name" placeholder="Provide Business Website">
						</div>
						<div class="form-group">
							<textarea class="form-control" placeholder="Provide Description of Business"></textarea>
						</div>
						<div class="form-group">
							<input type="web" class="form-control" name="name" id="name" placeholder="Provide Days of Operation">
						</div>
						<div class="form-group">
							
                            <!-- <select name="parent" id = "parent" class="select2" data-allow-clear="true" data-placeholder="Languages">
                                <option value="0"><?php echo get_phrase('none'); ?></option>
                                <option value="1">Armenian</option>
                                <option value="1">Russian</option>
                                <option value="1">Hebrew</option>
                                <option value="1">Spanish</option>
                                <option value="1">Persian</option>
                                <option value="1">Arabic</option>
                                <option value="1">French</option>
                            </select> -->
                            <select class="js-example-basic-multiple" name="states[]" multiple="multiple" data-allow-clear="true" data-placeholder="Languages" style="width: 100%;">
							  <option value="0" disabled><?php echo "Languages"; ?></option>
                                <option value="1">Armenian</option>
                                <option value="1">Russian</option>
                                <option value="1">Hebrew</option>
                                <option value="1">Spanish</option>
                                <option value="1">Persian</option>
                                <option value="1">Arabic</option>
                                <option value="1">French</option>
							</select>
                        	
						</div>
						<div class="form-group">
							<div class="input-group">
							  <div class="input-group-prepend">
							    <span class="input-group-text" id="inputGroupFileAddon01">Thumbnail</span>
							  </div>
							  <div class="custom-file">
							    <input type="file" class="custom-file-input" id="inputGroupFile01"
							      aria-describedby="inputGroupFileAddon01">
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
							    <input type="file" class="custom-file-input" id="inputGroupFile01"
							      aria-describedby="inputGroupFileAddon01">
							    <label class="custom-file-label" for="inputGroupFile01">Choose a Picture</label>
							  </div>
							</div>
						</div>
						<div class="input-group">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroupFileAddon01">Picture 2</span>
						  </div>
						  <div class="custom-file">
						    <input type="file" class="custom-file-input" id="inputGroupFile01"
						      aria-describedby="inputGroupFileAddon01">
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
							<input type="text" class="form-control" name="name" id="name" placeholder="Provide Full Name">
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" name="name" id="name" placeholder="Provide Telephone Number">
						</div>
						<div class="form-group">
							<input type="Email" class="form-control" name="name" id="name" placeholder="Provide Email Address">
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
							<input type="text" class="form-control" name="name" id="name" placeholder="Provide Business Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="name" id="name" placeholder="Provide Full Name">
						</div>
						<div class="form-group">
							<input type="tel" class="form-control" name="name" id="name" placeholder="Provide Telephone Number">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-2">
							<input type="submit" value="Submit" class="btn_1 w-100">
						</div>
						<!-- <div class="col-md-12">
							<a id="sign_up" class="btn_1 full-width outline wishlist icon-login" href="<?php echo site_url('home/sign_up'); ?>"><?php echo get_phrase("sign_up"); ?></a>
							</div> -->
					</div>
				</form>
			</div>
		</div>
	</div>
</div>