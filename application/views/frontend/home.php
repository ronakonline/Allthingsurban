<section class="hero_single version_2" style="background: #222 url(<?php echo base_url('uploads/system/home_banner.jpg'); ?>) center center no-repeat; background-size: cover;">
	<div class="wrapper">
		<div class="container">
			<h3><?php echo get_frontend_settings('banner_title'); ?>!</h3>
			<p><?php echo get_frontend_settings('slogan'); ?></p>
			<form action="<?php echo site_url('home/search'); ?>" method="get">
				<div class="row no-gutters custom-search-input-2">
					<div class="col-lg-7">
						<div class="form-group">
							<input class="form-control" type="text" name="search_string" placeholder="<?php echo get_phrase('what_are_you_looking_for'); ?>...">
							<i class="icon_search"></i>
						</div>
					</div>
					<div class="col-lg-3">
						<select class="wide" name="selected_category_id">
							<option value=""><?php echo get_phrase('all_categories'); ?></option>
							<?php
							$categories = $this->crud_model->get_categories()->result_array();
							foreach ($categories as $category):?>
								<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
							<?php endforeach; ?>
						</select>
					</div>
					<div class="col-lg-2">
						<input type="submit" value="Search">
					</div>
				</div>
				<!-- /row -->
			</form>
		</div>
	</div>
</section>
<!-- /hero_single -->

<div class="bg_color_1">
	<div class="container margin_80_55">
		<div class="main_title_2">
			<span><em></em></span>
			<h2><?php echo get_phrase('popular_categories'); ?></h2>
			<p><?php echo get_phrase('popular_categories_wise_listing_is_down_below'); ?>.</p>
		</div>
		<div class="row">
			<!-- Single Item of popular category starts -->
			<?php
			$categories = $this->db->get_where('category', array('parent' => 0))->result_array();
			foreach ($categories as $key => $category):?>
			<div class="col-lg-4 col-md-6">
				<a href="<?php echo site_url('home/filter_listings?category='.slugify($category['name']).'&&amenity=&&video=0&&status=all'); ?>" class="grid_item">
					<figure>
						<img src="<?php echo base_url('uploads/category_thumbnails/').$category['thumbnail'];?>" alt="">
						<div class="info">
							<small><?php echo count($this->frontend_model->get_category_wise_listings($category['id'])).' '.get_phrase('listings'); ?></small>
							<h3><?php echo $category['name']; ?></h3>
						</div>
					</figure>
				</a>
			</div>
			<?php endforeach; ?>
			<!-- Single Item of popular category ends -->
		</div>
	<!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /bg_color_1 -->

<div class="container-fluid margin_80_55">
	<div class="main_title_2">
		<span><em></em></span>
		<h2><?php echo get_phrase('Classified'); ?></h2>
	</div>

	<div id="reccomended" class="owl-carousel owl-theme">
		<?php // $listing_number = 0; ?>
		<?php $listings = $this->frontend_model->get_top_ten_classifieds();

		

		// foreach ($listings as $key => $listing):
		// 	$package_id = has_package($listing['user_id']);
		// 	$total_listing = $this->db->get_where('package_purchased_history', array('id', $package_id))->row('number_of_listings');

		// 	$listings_2 = $this->db->get_where('listing', array('user_id' => $listing['user_id']));
		// 	foreach($listings_2 as $listing_2){
		// 		$listing_number++;
		// 		if($listing_number < $total_listing || $listing_number == $total_listing){
		// 			echo 'show, ';
		// 		}
		// 	}
		// endforeach;


		foreach ($listings as $key => $listing): ?>
		<div class="item">
			<div class="strip grid">
				<figure>

					<!--redirect to routs file-->
					<a href="<?php echo get_listing_url($listing['id']); ?>"><img src="<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>" class="img-fluid" alt="" width="400" height="266"><div class="read_more"><span>Read more</span></div></a>
					<small><?php echo $listing['listing_type'] == "" ? ucfirst(get_phrase('general')) : ucfirst(get_phrase($listing['listing_type'])) ; ?></small>
				</figure>
				<div class="wrapper">
					<h3><a href="<?php echo get_listing_url($listing['id']); ?>"><?php echo $listing['name']; ?></a></h3>
					<p><?php echo substr($listing['description'], 0, 100) . '...'; ?>.</p>
					<a class="address" href="http://maps.google.com/maps?q=<?php echo $listing['latitude']; ?>,<?php echo $listing['longitude']; ?>" target="_blank"><?php echo get_phrase('get_directions'); ?></a>
				</div>
				<ul>
					<li><span class="loc_open"><?php echo now_open($listing['id']); ?></span></li>
					<li><div class="score"><span>
						<?php
						if ($this->frontend_model->get_listing_wise_rating($listing['id']) > 0) {
							$quality = $this->frontend_model->get_rating_wise_quality($listing['id']);
							echo $quality['quality'];
						}else {
							echo get_phrase('unreviewed');
						}
						?>
						<em><?php echo count($this->frontend_model->get_listing_wise_review($listing['id'])).' '.get_phrase('reviews'); ?></em></span><strong><?php echo $this->frontend_model->get_listing_wise_rating($listing['id']); ?></strong></div></li>
					</ul>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
	<!-- /carousel -->
	<div class="container">
		<div class="text-center"><a href="<?php echo site_url('home/classifieds'); ?>" class="btn_1 rounded"><?php echo get_phrase('view_all'); ?></a></div>
	</div>
	<!-- /container -->
</div>
<!-- /container -->


<!-- /container -->
