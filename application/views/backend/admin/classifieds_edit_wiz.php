<?php
$listing_details = $this->crud_model->get_classifieds($listing_id)->row_array();
//$time_configuration_details = $this->crud_model->get_time_configuration_by_listing_id($listing_id)->row_array();
$social_links = json_decode($listing_details['social'], true);
$countries  = $this->db->get('country')->result_array();
$categories = $this->db->get('classified_categorie')->result_array();
$listing_amenities = json_decode($listing_details['amenities'], false);
$listing_categories = json_decode($listing_details['categories'], false);
$languages = json_decode($listing_details['languages'],false);

?>

<div class="row">
    <div class="col-lg-10">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    Edit Classified Category
                </div>
            </div>
            <div class="panel-body">

                <form action="<?php echo site_url('admin/classifieds/edit/').$listing_details['id']; ?>" method="post" enctype="multipart/form-data" role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Legal Name</label>

                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="business_name" id="name" placeholder="Provide Business Legal Name"  value="<?php echo $listing_details['business_name']; ?>"  >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Address</label>

                        <div class="col-sm-7">
                            <textarea rows="4" class="form-control" name="address" placeholder="Provide Business Address"  > <?php echo $listing_details['address']; ?></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Phone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="business_telephone" id="name" placeholder="Provide button Phone Number"  value="<?php echo $listing_details['business_telephone']; ?>"  >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Email Address</label>

                        <div class="col-sm-7">
                            <input type="Email" class="form-control" name="business_email" id="name" placeholder="Provide Business Email Address"  value="<?php echo $listing_details['business_email']; ?>"  >
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Website</label>

                        <div class="col-sm-7">
                            <input type="web" class="form-control" name="website" id="name" placeholder="Provide Business Website"  value="<?php echo $listing_details['business_website']; ?>"  >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Description of Business</label>

                        <div class="col-sm-7">
                            <textarea rows="4" class="form-control" name="description" placeholder="Provide Description of Business"  > <?php echo $listing_details['description']; ?></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="parent" class="col-sm-3 control-label"><?php echo get_phrase('parent_category'); ?></label>

                        <div class="col-sm-7">
                            <select name="category" id = "category" class="select2" data-allow-clear="true" data-placeholder="Category"  >
                                <option value="0" disabled selected><?php echo get_phrase('none'); ?></option>
                                <?php foreach ($categories as $category){ ?>
                                    <?php if($listing_details['category'] == $category['id']) {?>
                                    <option value="<?php echo $category['id']; ?>" selected><?php echo $category['sub_name']; ?></option>
                                        <?php }else{ ?>
                                        <option value="<?php echo $category['id']; ?>"><?php echo $category['sub_name']; ?></option>
                                        <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Days of Operation</label>

                        <div class="col-sm-7">
                            <input type="web" class="form-control" name="days" id="name" placeholder="Provide Days of Operation"  value="<?php echo $listing_details['days']; ?>"  >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="parent" class="col-sm-3 control-label">Foreign Languages you speak</label>

                        <div class="col-sm-7">
                            <select name="languages[]" id = "languages" class="select2" data-allow-clear="true" data-placeholder="Languages" multiple  >
                                <option value="0" disabled><?php echo get_phrase('none'); ?></option>
                                <?php if(in_array("Armenian",$listing_details['language'])){ ?>
                                <option value="Armenian" selected>Armenian</option>
                                <?php }else{ ?>
                                <option value="Armenian">Armenian</option>
                                <?php } ?>
                                <?php if(in_array("Russian",$listing_details['language'])){ ?>
                                <option value="Russian" selected>Russian</option>
                                <?php }else{ ?>
                                <option value="Russian">Russian</option>
                                <?php } ?>
                                <?php if(in_array("Hebrew",$listing_details['language'])){ ?>
                                    <option value="Hebrew" selected>Hebrew</option>
                                <?php }else{ ?>
                                    <option value="Hebrew">Hebrew</option>
                                <?php } ?>
                                <?php if(in_array("Spanish",$listing_details['language'])){ ?>
                                    <option value="Spanish" selected>Spanish</option>
                                <?php }else{ ?>
                                    <option value="Spanish">Spanish</option>
                                <?php } ?>
                                <?php if(in_array("Persian",$listing_details['language'])){ ?>
                                    <option value="Persian" selected>Persian</option>
                                <?php }else{ ?>
                                    <option value="Persian">Persian</option>
                                <?php } ?>

                                <?php if(in_array("Arabic",$languages)){ ?>
                                <option value="Arabic" selected>Arabic</option>
                                <?php }else{ ?>
                                <option value="Arabic">Arabic</option>
                                <?php } ?>
                                <?php if(in_array("French",$languages)){ ?>
                                <option value="French" selected>French</option>
                                <?php }else{ ?>
                                <option value="French">French</option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>





                    <div class="form-group" id = "thumbnail-picker-area">
                        <label class="col-sm-3 control-label">Logo<small>(JPG, PNG, GIF, max size:2Mb)</small> </label>

                        <div class="col-sm-7">

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 200px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('uploads/classified/').$listing_details['logo']; ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="logo" accept="image/*"  >
                                    </span>
                                    <a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput"><?php echo get_phrase('remove'); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id = "thumbnail-picker-area">
                        <label class="col-sm-3 control-label">Picture<small>(JPG, PNG, GIF, max size:2Mb)</small> </label>

                        <div class="col-sm-7">

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 200px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('uploads/classified/').$listing_details['picture1'];; ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="picture1" accept="image/*"  >
                                    </span>
                                    <a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput"><?php echo get_phrase('remove'); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id = "thumbnail-picker-area">
                        <label class="col-sm-3 control-label">Picture<small>(JPG, PNG, GIF, max size:2Mb)</small> </label>

                        <div class="col-sm-7">

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 200px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('uploads/classified/').$listing_details['picture2'];; ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="picture2" accept="image/*"  >
                                    </span>
                                    <a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput"><?php echo get_phrase('remove'); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>


            </div>
        </div>
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    Personal Info
                </div>
            </div>
            <div class="panel-body form-horizontal form-groups-bordered">



                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Full Name</label>

                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="full_name" id="name" placeholder="Provide Full Name" value="<?php echo $listing_details['full_name']; ?>"  >
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Telephone Number</label>

                    <div class="col-sm-7">
                        <input type="tel" class="form-control" name="telephone" id="telephone" placeholder="Provide Telephone Number" value="<?php echo $listing_details['telephone']; ?>"  >
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Email Address</label>

                    <div class="col-sm-7">
                        <input type="Email" class="form-control" name="email" id="ref_business" placeholder="Provide Email Address" value="<?php echo $listing_details['email']; ?>"  >
                    </div>
                </div>


            </div>
        </div>
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    How You Hear About Us? <small>(Optional)</small>
                </div>
            </div>
            <div class="panel-body form-horizontal form-groups-bordered">



                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Business Name</label>

                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="ref_business" id="ref_business" placeholder="Provide Business Name" value="<?php echo $listing_details['ref_business']; ?>">
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Full Name</label>

                    <div class="col-sm-7">
                        <input type="text" class="form-control" name="ref_name" id="ref_name" placeholder="Provide Full Name" value="<?php echo $listing_details['ref_name']; ?>">
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Telephone Number</label>

                    <div class="col-sm-7">
                        <input type="tel" class="form-control" name="ref_telephone" id="ref_telephone" placeholder="Provide Telephone Number" value="<?php echo $listing_details['ref_telephone']; ?>">
                    </div>
                </div>

                <div class="col-sm-offset-3 col-sm-5" style="padding-top: 10px;">
                    <button type="submit" class="btn btn-info"><?php echo get_phrase('Edit_category'); ?></button>
                </div>
                </form>
            </div>
        </div>
    </div><!-- end col-->
</div>

