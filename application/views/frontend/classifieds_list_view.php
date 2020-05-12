<?php
$number_of_visible_categories = 10;
$number_of_visible_amenities 	= 10;
$number_of_visible_cities 		= 10;

isset($category_ids) ? "" : $category_ids = array();
isset($amenity_ids) ? "" 	: $amenity_ids = array();
isset($city_id) ? "" 			: $city_id = 'all';
isset($price_range) ? "" 			: $price_range = 0;
isset($with_video) ? "" 	: $with_video = "";
isset($with_open) ? "" 	: $with_open = "";
isset($search_string) ? "": $search_string = "";
?>

<div class="container-fluid full-height">
    <div class="row row-height">
        <div class="col-lg-5 content-left order-md-last order-sm-last order-last">
            <div id="results_map_view">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-10">
                            <h4><strong><?php echo count($listings); ?></strong> <?php echo get_phrase('result_for_all'); ?></h4>
                        </div>
                        <div class="col-2">
                            <a href="#0" class="search_mob btn_search_mobile map_view"></a> <!-- /open search panel -->

                        </div>
                    </div>
                    <!-- /row -->
                    <div class="search_mob_wp">
                        <div class="custom-search-input-2 map_view">
                            <form action="<?php echo site_url('home/search'); ?>" method="GET">
                                <div class="form-group">
                                    <input class="form-control" name="search_string" type="text" value="<?php echo $search_string; ?>" placeholder="<?php echo get_phrase('what_are_you_looking_for'); ?>...">
                                    <i class="icon_search"></i>
                                </div>
                                <select class="wide" name="selected_category_id">
                                    <option value=""><?php echo get_phrase('all_categories'); ?></option>
                                    <?php
                                    $categories = $this->crud_model->get_categories()->result_array();
                                    foreach ($categories as $category):?>
                                        <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <input type="submit" value="Search">
                            </form>
                        </div>
                    </div>
                    <!-- /search_mobile -->
                </div>
                <!-- /container -->
            </div>
            <!-- /results -->





            <?php
            foreach($listings as $listing):
                if(!has_package($listing['user_id']) > 0)
                    continue; ?>

                <div class="strip map_view add_top_20 <?php if($listing['is_featured'] == 1) echo 'featured-tag-border'; ?>" id = "<?php echo $listing['code']; ?>" >
                    <div class="row no-gutters">
                        <div class="col-4">
                            <figure>
                                <a href="<?php echo get_listing_url($listing['id']); ?>"  id = "listing-banner-image-for-<?php echo $listing['code']; ?>"  class="d-block h-100 img" style="background-image:url('<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>')">
                                    <!-- <img src="<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>" class="img-fluid" alt=""> -->
                                    <div class="read_more"><span><?php echo get_phrase('watch_details'); ?></span></div>
                                </a>
                                <small><?php echo $listing['listing_type'] == "" ? ucfirst(get_phrase('general')) : ucfirst(get_phrase($listing['listing_type'])) ; ?></small>
                                <?php if($listing['is_featured'] == 1): ?>
                                    <small class="featured-tag-list"><?php echo get_phrase('featured'); ?></small>
                                <?php endif; ?>
                            </figure>
                        </div>
                        <div class="col-8 <?php if($listing['is_featured'] == 1) echo 'featured-body'; ?>">
                            <div class="wrapper">
                                <a href="javascript::" class="wishlist-icon small" onclick="addToWishList(this, '<?php echo $listing['id']; ?>')">
                                    <i class=" <?php echo is_wishlisted($listing['id']) ? 'fas fa-heart' : 'far fa-heart'; ?> "></i>
                                </a>
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
                                <?php if ($listing['latitude'] != "" && $listing['longitude'] != ""): ?>
                                    <a class="address" href="javascript:" button-direction-id = "<?php echo $listing['code']; ?>" target=""><?php echo get_phrase('show_on_map'); ?></a>
                                <?php endif; ?>
                            </div>
                            <ul class="<?php if($listing['is_featured'] == 1) echo 'featured-footer'; ?>">
                                <li><span class="<?php echo strtolower(now_open($listing['id'])) == 'closed' ? 'loc_closed' : 'loc_open'; ?>"><?php echo now_open($listing['id']); ?></span></li>
                                <li>
                                    <div class="score">
										<span>
											<?php
                                            if ($this->frontend_model->get_listing_wise_rating($listing['id']) > 0) {
                                                $quality = $this->frontend_model->get_rating_wise_quality($listing['id']);
                                                echo $quality['quality'];
                                            }else {
                                                echo get_phrase('unreviewed');
                                            }
                                            ?>
											<em>
												<?php echo count($this->frontend_model->get_listing_wise_review($listing['id'])).' '.get_phrase('reviews'); ?>
											</em>
										</span>
                                        <strong><?php echo $this->frontend_model->get_listing_wise_rating($listing['id']); ?></strong></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /strip map_view -->

            <?php endforeach; ?>

            <!-- <p class="text-center add_top_30"><a href="#0" class="btn_1 rounded"><strong>Load more</strong></a></p> -->
            <nav class="text-center">
                <?php echo $this->pagination->create_links(); ?>
            </nav>
        </div>
        <!-- /content-left-->


    </div>
    <!-- /row-->
</div>
<!-- /container-fluid -->


<script type="text/javascript">
    $(document).ready(function() {
        var deviceWidth = $(window).width();
        // windows laptop
        if (deviceWidth >= 1300 && deviceWidth <= 1450) {
            $('#sidebar').removeClass('col-xl-2');
            $('#sidebar').addClass('col-xl-3');
            $('#listings').removeClass('col-xl-5');
            $('#listings').addClass('col-xl-6');
        }
        //Macbook pro Ratina display
        if (deviceWidth >= 2550 && deviceWidth <= 2900) {
            $('#sidebar').removeClass('col-xl-2');
            $('#sidebar').addClass('col-xl-3');
            $('#listings').removeClass('col-xl-5');
            $('#listings').addClass('col-xl-6');
        }
    });
    function filter(elem) {
        var urlPrefix 	= '<?php echo site_url('home/filter_listings?'); ?>'
        var urlSuffix = "";
        var slectedCategories = "";
        var selectedAmenities = "";
        var selectedCity = "";
        var selectedVideoAvailability = 0;
        var selectedPriceRange = 0;
        var selectedOpeningStatus = "all";

        $('.categories:checked').each(function() {
            (slectedCategories === "") ? slectedCategories = $(this).attr('value') : slectedCategories = slectedCategories + "--" + $(this).attr('value');
        });

        $('.amenities:checked').each(function() {
            (selectedAmenities === "") ? selectedAmenities = $(this).attr('value') : selectedAmenities = selectedAmenities + "--" + $(this).attr('value');
        });

        $('.city:checked').each(function() {
            (selectedCity === "") ? selectedCity = $(this).attr('value') : selectedCity = selectedCity + "--" + $(this).attr('value');
        });

        $('.video_availability:checked').each(function() {
            (selectedVideoAvailability === 0) ? selectedVideoAvailability = $(this).attr('value') : selectedVideoAvailability = selectedVideoAvailability + "--" + $(this).attr('value');
        });
        $('.openingStatus:checked').each(function() {
            (selectedOpeningStatus === 'all') ? selectedOpeningStatus = $(this).attr('value') : selectedOpeningStatus = $(this).attr('value');
        });

        selectedPriceRange = $('.price-range').val();
        urlSuffix = "category="+slectedCategories+"&&amenity="+selectedAmenities+"&&city="+selectedCity+"&&price-range="+selectedPriceRange+"&&video="+selectedVideoAvailability+"&&status="+selectedOpeningStatus;
        window.location.replace(urlPrefix+urlSuffix);

        selectedPriceRange = $('.price-range').val();
        urlSuffix = "category="+slectedCategories+"&&amenity="+selectedAmenities+"&&city="+selectedCity+"&&price-range="+selectedPriceRange+"&&video="+selectedVideoAvailability+"&&status="+selectedOpeningStatus;
        window.location.replace(urlPrefix+urlSuffix);
    }

    function addToWishList(elem, listing_id) {
        var isLoggedIn = '<?php echo $this->session->userdata('is_logged_in'); ?>';
        if (isLoggedIn === '1') {
            $.ajax({
                type : 'POST',
                url : '<?php echo site_url('home/add_to_wishlist'); ?>',
                data : {listing_id : listing_id},
                success : function(response) {
                    if (response == 'added') {
                        $(elem).html('<i class="fas fa-heart"></i>');
                        toastr.success('<?php echo get_phrase('added_to_wishlist'); ?>');
                    }else {
                        $(elem).html('<i class="far fa-heart"></i>');
                        toastr.success('<?php echo get_phrase('removed_from_the_wishlist'); ?>');
                    }
                }
            });
        }else {
            loginAlert();
        }
    }


    function showToggle(elem, selector) {
        $('.'+selector).slideToggle();
        console.log($(elem).text());
        if($(elem).text() === "<?php echo get_phrase('show_more'); ?>")
        {
            $(elem).text('<?php echo get_phrase('show_less'); ?>');
        }
        else
        {
            $(elem).text('<?php echo get_phrase('show_more'); ?>');
        }
    }
</script>

<!-- This map-category.php file has all the fucntions for showing the map, marker, map info and all the popup markups -->
<?php include 'assets/frontend/js/map/map-category.php'; ?>

<!-- This script is needed for providing the json file which has all the listing points and required information -->
<script>
    createListingsMap({
        mapId: 'categorySideMap',
        jsonFile: '<?php echo base_url('assets/frontend/js/map/listing-geojson.json'); ?>'
    });
</script>
<script>
    function toggleListingView(type) {
        $.ajax({
            url:'<?php echo site_url('home/listings_view/'); ?>'+type,
            success: function(response){
                location.reload();
            }
        });
    }
</script>