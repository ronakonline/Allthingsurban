<div class="sub_header_in sticky_header">
    <div class="container">
        <h1 class="text-center " style="padding-top: 20px;">Classified</h1>
    </div>
    <!-- /container -->
</div>
<!-- /sub_header -->




<div class="container margin_60_35">
    <div class="row">
        <div class="col-lg-8">
            <section id="description">
                <div class="detail_title_1">
                    <div class="row">
                        <div class="col-6">

                        </div>
                        <div class="col-6">

                        </div>
                    </div>
                    <h1>
                        <?php echo $listing_details['name']; ?>

                        <?php $claiming_status = $this->db->get_where('claimed_listing', array('listing_id' => $listing_id))->row('status'); ?>
                        <?php if($claiming_status == 1): ?>
                            <span style="font-size: 20px;"><i class='icon-check text-success'></i></span>
                        <?php endif; ?>
                    </h1>
                    <?php if ($listing_details['latitude'] != "" && $listing_details['longitude'] != ""): ?>
                        <a class="address" href="http://maps.google.com/maps?q=<?php echo $listing_details['latitude']; ?>,<?php echo $listing_details['longitude']; ?>" target="_blank"><?php echo $listing_details['address']; ?></a>
                    <?php endif; ?>
                </div>

                <div class="add_bottom_15">
                    <?php
                    $categories = json_decode($listing_details['categories']);
                    for ($i = 0; $i < sizeof($categories); $i++):
                        $this->db->where('id',$categories[$i]);
                        $category_name = $this->db->get('category')->row()->name;
                        ?>
                        <span class="loc_open mr-2">
						<a href="<?php echo site_url('home/filter_listings?category='.slugify($category_name).'&&status=all'); ?>"
                           style="color: #32a067;">
							<?php echo $category_name;?>
							>
						</a>
					</span>
                    <?php
                    endfor;
                    ?>
                </div>

                <h5><?php echo get_phrase('about'); ?></h5>
                <p>
                    <?php echo $listing_details['description']; ?>
                </p>
                <!-- Photo Gallery -->
                <?php if (count(json_decode($listing_details['photos'])) > 0): ?>
                    <h5 class="add_bottom_15"><?php echo get_phrase('photo_gallery'); ?></h5>
                    <div class="grid-gallery">
                        <ul class="magnific-gallery">
                            <?php foreach (json_decode($listing_details['photos']) as $key => $photo): ?>
                                <?php if (file_exists('uploads/listing_images/'.$photo)): ?>
                                    <li>
                                        <figure>
                                            <img src="<?php echo base_url('uploads/listing_images/'.$photo); ?>" alt="">
                                            <figcaption>
                                                <div class="caption-content">
                                                    <a href="<?php echo base_url('uploads/listing_images/'.$photo); ?>" title="" data-effect="mfp-zoom-in">
                                                        <i class="pe-7s-plus"></i>

                                                    </a>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </li>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <hr>
                <?php include 'contact_and_social.php'; ?>



                <!-- /row -->

                <!-- Video File Base On Package-->
                <?php //include 'video_player.php'; ?>

                <hr>
                <h3>Location</h3>
                <div id="categorySideMap" class="map-full map-layout single-listing-map" style="z-index: 50;"></div>
                <!-- End Map -->
            </section>
            <!-- /section -->
            <!-- Section Of Review Starts -->
            <?php //include 'listing_reviews.php'; ?>
            <!-- /section -->

            <?php $google_analytics_id = $this->db->get_where('listing', array('id' => $listing_id))->row('google_analytics_id'); ?>
            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $google_analytics_id; ?>"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());

                gtag('config', '<?php echo $google_analytics_id; ?>');
            </script>
        </div>
        <!-- /col -->

        <!-- Contact Form Base On Package-->
        <?php if(has_package_feature('ability_to_add_contact_form', $listing_details['user_id']) == 1): ?>
            <aside class="col-lg-4" id="sidebar">
                <div class="box_detail booking">
                    <form class="contact-us-form" action="#" method="post">
                        <input type="hidden" name="user_id" value="<?php echo $listing_details['user_id']; ?>">
                        <input type="hidden" name="requester_id" value="<?php echo $this->session->userdata('user_id'); ?>">
                        <input type="hidden" name="listing_id" value="<?php echo $listing_details['id']; ?>">
                        <input type="hidden" name="listing_type" value="<?php echo $listing_details['listing_type']; ?>">
                        <input type="hidden" name="slug" value="<?php echo slugify($listing_details['name']); ?>">

                        <?php include 'general_contact_form.php'; ?>

                        <a href="javascript::" class=" add_top_30 btn_1 full-width purchase" onclick="getTheGuestNumberForBooking('<?php echo $listing_details['listing_type']; ?>')"><?php echo get_phrase('submit'); ?></a>
                    </form>

                </div>

                <ul class="share-buttons">
                    <li><a href = "https://www.facebook.com/sharer/sharer.php?u=<?php echo current_url();?>" class="fb-share" target="_blank"><i class="social_facebook"></i> Share</a></li>
                    <li><a href = "https://twitter.com/share?url=<?php echo current_url();?>" target = "_blank" class="twitter-share"><i class="social_twitter"></i> Tweet</a></li>
                    <li><a href = "http://pinterest.com/pin/create/link/?url=<?php echo current_url();?>" target="_blank" class="gplus-share"><i class="social_pinterest"></i> Pin</a></li>
                </ul>
            </aside>
        <?php endif; ?>

    </div>
    <!-- /row -->
</div>
<!-- /container -->

<script type="text/javascript">
    var isLoggedIn = '<?php echo $this->session->userdata('is_logged_in'); ?>';

    // This function performs all the functionalities to add to wishlist
    function addToWishList(listing_id) {
        if (isLoggedIn === '1') {
            $.ajax({
                type : 'POST',
                url : '<?php echo site_url('home/add_to_wishlist'); ?>',
                data : {listing_id : listing_id},
                success : function(response) {
                    if (response == 'added') {
                        $('#btn-wishlist').html('<i class="icon_heart"></i> <?php echo get_phrase('remove_from_wishlist'); ?>');
                    }else {
                        $('#btn-wishlist').html('<i class="icon_heart"></i> <?php echo get_phrase('add_to_wishlist'); ?>');
                    }
                }
            });
        }else {
            loginAlert();
        }
    }

    // This function shows the Report listing form
    function showClaimForm(){
        $('#claim_form').toggle();
        $('#report_form').hide();
    }
    // This function shows the Report listing form
    function showReportForm() {
        $('#report_form').toggle();
        $('#claim_form').hide();
    }

    // This function return the number of different types of guests
    function getTheGuestNumberForBooking(listing_type) {
        if (isLoggedIn === '1') {
            if (listing_type === "restaurant" || listing_type === "hotel") {
                $('#adult_guests_for_booking').val($('#adult_guests').val());
                $('#child_guests_for_booking').val($('#child_guests').val());
            }

            $('.contact-us-form').submit();
        }else {
            loginAlert();
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
