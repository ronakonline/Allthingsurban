<section class="hero_single version_2" style="background: #222 url(<?php echo base_url('uploads/system/home_banner.jpg'); ?>) center center no-repeat; background-size: cover;">
	<div class="wrapper">
		<div class="container" style="padding-top: 65px;">
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

            <ul class="mt-3"><li class="list-inline-item"></li><li class="list-inline-item"></li><li class="list-inline-item"></li><li class="list-inline-item"></li><li class="list-inline-item"></li></ul>
		</div>
	</div>
</section>
<div class="row">
    <div class="col-sm" style="text-align: center">Houston</div>
    <div class="col-sm" style="text-align: center">San Antonio</div>
    <div class="col-sm" style="text-align: center">Dallas Fort Worth</div>
    <div class="col-sm" style="text-align: center">Austin</div>
    <div class="col-sm" style="text-align: center">El Paso</div>


</div>
<!-- /hero_single -->
<section class="flat-highlights" >
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="highlights">
                    <ul class="menu-list" style="margin-bottom: 0px;">
                        <li>
                            <a href="#" title="">
<!--                                <img src="--><?php //echo base_url();?><!--assets/frontend/images/page/cutlery.png" alt="">-->
                                <i class="fa fa-briefcase fa-2x"></i>
                                <span>Businesses</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting'); ?>" title="">
                                <i class="fa fa-check fa-2x"></i>
                                <span>Add Listing</span>
                            </a>

                        </li>
                        <li class="">
                            <a href="<?php echo base_url('Home/jobs'); ?>" title="">
                                <i class="fa fa-user fa-2x"></i>
                                <span>Jobs</span>
                            </a>

                        </li>
                        <li>
                            <a href="#" title="">
                                <i class="fa fa-home fa-2x"></i>
                                <span>Housing/Offices</span>
                            </a>

                        </li>
                        <li>
                            <a href="#" title="">
                                <i class="fa fa-shopping-cart fa-2x"></i>
                                <span>Buy/Sell</span>
                            </a>

                        </li>
                        <li>
                            <a href="#" title="">
                                <i class="fa fa-wrench fa-2x"></i>
                                <span>Services</span>
                            </a>

                        </li>
                        <li>
                            <a href="#" title="">
                                <i class="fa fa-calendar fa-2x"></i>
                                <span>Events</span>
                            </a>

                        </li>
                        <li>
                            <a href="#" title="">
                                <i class="fa fa-smile fa-2x"></i>
                                <span>Dating</span>
                            </a>

                        </li>
                    </ul><!-- /.menu-list -->
                </div><!-- /.highlights -->
            </div><!-- /.col-md-12 -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</section>

<div class="bg_color_1" id="bs">
    <div class="container margin_80_55" style="">
        <div class="row">
            <aside class="col-3" id="sidebar">
                <div id="filters_col">
                    <a  href="#collapseFilters" ><?php echo get_phrase('Business Directory'); ?> </a>
                    <!-- Filter form starts-->

                            <div class="filter_type">
                                <h6 style="margin: 0px;"></h6>
                                <ul>
                                    <?php foreach ($businesses as $row) { ?>
                                    <li><a><?php echo $row->sub_name; ?></a> </li>
                                    <?php } ?>
                                </ul>
                            </div>

                        <!--/collapse -->

                    <!-- filter form ends -->
                </div>
                <!--/filters col-->
            </aside>
            <div class="col-xl-9 col-md-9 " id="listings">

                <div class="row">

                    <?php
                    foreach($listings as $listing):
                        if(!has_package($listing['user_id']) > 0)
                            continue; ?>

                        <?php
                        // $active_package = has_package($listing['user_id']);
                        // $listing_allowed_number = $this->db->get_where('package_purchased_history', array('id', $active_package))->row('number_of_listings');
                        // $listings_2 = $this->db->get_where('listing', array('user_id' => $listing['user_id']));

                        ?>



                        <!-- A Single Listing Starts-->
                        <div class="col-4 card " data-marker-id="<?php echo $listing['code']; ?>" id = "<?php echo $listing['code']; ?>">

                            <div class="strip grid <?php if($listing['is_featured'] == 1) echo 'featured-tag-border'; ?>">
                                <figure>

                                    <a href="javascript::" class="wishlist-icon" onclick="addToWishList(this, '<?php echo $listing['id']; ?>')">
                                        <i class=" <?php echo is_wishlisted($listing['id']) ? 'fas fa-heart' : 'far fa-heart'; ?> "></i>
                                    </a>
                                    <?php if($listing['is_featured'] == 1){ ?>
                                        <a href="javascript::" class="featured-tag-grid"><?php echo get_phrase('featured'); ?></a>
                                    <?php } ?>
                                    <a href="<?php echo get_listing_url($listing['id']); ?>"  id = "listing-banner-image-for-<?php echo $listing['code']; ?>"  class="d-block h-100 img" style="background-image:url('<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>')">
                                        <!-- <img src="<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>" class="img-fluid" alt=""> -->
                                        <div class="read_more"><span><?php echo get_phrase('watch_details'); ?></span></div>
                                    </a>
                                    <small><?php echo $listing['listing_type'] == "" ? ucfirst(get_phrase('general')) : ucfirst(get_phrase($listing['listing_type'])) ; ?></small>
                                </figure>
                                <div class="wrapper <?php if($listing['is_featured'] == 1) echo 'featured-body'; ?>">
                                    <h3 class="ellipsis"><a href="<?php echo get_listing_url($listing['id']); ?>"><?php echo $listing['name']; ?></a></h3>
                                    <small>
                                        <?php
                                        $city 	 = $this->db->get_where('city', array('id' =>  $listing['city_id']))->row_array();
                                        $country = $this->db->get_where('country', array('id' =>  $listing['country_id']))->row_array();
                                        echo $city['name'].', '.$country['name'];
                                        ?>
                                    </small>
                                    <p class="ellipsis">
                                        <?php echo $listing['description']; ?>
                                    </p>


                                </div>

                            </div>
                        </div>
                        <!-- A Single Listing Ends-->
                    <?php endforeach; ?>
                </div>

            </div>


        </div><!--/row-->

    </div>
    <!-- /container -->
</div>

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
					<a href="<?php echo get_classifieds_url($listing['id']); ?>"><img src="<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>" class="img-fluid" alt="" width="400" height="266"><div class="read_more"><span>Read more</span></div></a>
					<small><?php echo $listing['listing_type'] == "" ? ucfirst(get_phrase('general')) : ucfirst(get_phrase($listing['listing_type'])) ; ?></small>
				</figure>
				<div class="wrapper">
					<h3><a href="<?php echo get_listing_url($listing['id']); ?>"><?php echo $listing['name']; ?></a></h3>
					<p><?php echo substr($listing['description'], 0, 100) . '...'; ?>.</p>

				</div>

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
