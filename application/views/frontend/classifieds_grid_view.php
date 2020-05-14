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
<div class="sub_header_in sticky_header">
    <div class="container">
        <h1></h1>
    </div>
    <!-- /container -->
</div>
<!-- /sub_header -->
<div id="results">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-10">
                <h4><strong><?php echo count($listings); ?></strong> <?php echo get_phrase('result_for_all'); ?></h4>
            </div>
            <div class="col-lg-9 col-md-8 col-2">
                <a href="#0" class="search_mob btn_search_mobile"></a> <!-- /open search panel -->
                <form action="<?php echo site_url('home/csearch'); ?>" method="GET">
                    <div class="row no-gutters custom-search-input-2 inner">
                        <div class="col-lg-8">
                            <div class="form-group">
                                <input class="form-control" name="search_string" type="text" value="<?php echo $search_string; ?>" placeholder="<?php echo get_phrase('what_are_you_looking_for'); ?>...">
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
                        <div class="col-lg-1">
                            <input type="submit" value="Search">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /row -->
        <div class="search_mob_wp">
            <div class="custom-search-input-2">
                <form action="<?php echo site_url('home/csearch'); ?>" method="GET">
                    <div class="form-group">
                        <input class="form-control" name = "search_string" type="text" placeholder="<?php echo get_phrase('what_are_you_looking_for') ?>...">
                        <i class="icon_search"></i>
                    </div>
                    <select class="wide" name="selected_category_id">
                        <option><?php echo get_phrase('all_categories'); ?></option>
                        <?php $categories = $this->db->get('category')->result_array();
                        foreach ($categories as $key => $category):?>
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
<!-- /filters -->




<div class="container-fluid margin_60_35">





    <div class="row" >

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
            <div class="col-lg-3 col-md-3 " data-marker-id="<?php echo $listing['code']; ?>" id = "<?php echo $listing['code']; ?>">

                <div class="strip grid ">
                    <figure>


                        <?php if($listing['is_featured'] == 1){ ?>
                            <a href="javascript::" class="featured-tag-grid"><?php echo get_phrase('featured'); ?></a>
                        <?php } ?>
                        <a href="<?php echo get_classifieds_url($listing['id']); ?>"  id = "listing-banner-image-for-<?php echo $listing['code']; ?>"  class="d-block h-100 img" style="background-image:url('<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>')">
                            <!-- <img src="<?php echo base_url('uploads/listing_thumbnails/'.$listing['listing_thumbnail']); ?>" class="img-fluid" alt=""> -->
                            <div class="read_more"><span><?php echo get_phrase('watch_details'); ?></span></div>
                        </a>
                        <small><?php echo $listing['listing_type'] == "" ? ucfirst(get_phrase('general')) : ucfirst(get_phrase($listing['listing_type'])) ; ?></small>
                    </figure>
                    <div class="wrapper <?php if($listing['is_featured'] == 1) echo 'featured-body'; ?>">
                        <h3 class="ellipsis"><a href="<?php echo get_classifieds_url($listing['id']); ?>"><?php echo $listing['name']; ?></a></h3>
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

                </div>
            </div>
            <!-- A Single Listing Ends-->
        <?php endforeach; ?>
    </div id="listings">
    <nav class="text-center">
        <?php echo $this->pagination->create_links(); ?>
    </nav>



</div>
<!-- /container -->
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