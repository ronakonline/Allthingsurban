<div class="row">
    <div class="col-lg-10">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    Add Classified Category
                </div>
            </div>
            <div class="panel-body">

                <form action="<?php echo site_url('admin/classifieds/add'); ?>" method="post" enctype="multipart/form-data" role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Legal Name</label>

                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="business_name" id="name" placeholder="Provide Business Legal Name" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Address</label>

                        <div class="col-sm-7">
                            <textarea rows="4" class="form-control" name="address" placeholder="Provide Business Address" required></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Phone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="business_telephone" id="name" placeholder="Provide button Phone Number" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Email Address</label>

                        <div class="col-sm-7">
                            <input type="Email" class="form-control" name="business_email" id="name" placeholder="Provide Business Email Address" required>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Website</label>

                        <div class="col-sm-7">
                            <input type="web" class="form-control" name="website" id="name" placeholder="Provide Business Website" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Description of Business</label>

                        <div class="col-sm-7">
                            <textarea rows="4" class="form-control" name="description" placeholder="Provide Description of Business" required></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="parent" class="col-sm-3 control-label"><?php echo get_phrase('parent_category'); ?></label>

                        <div class="col-sm-7">
                            <select name="category" id = "category" class="select2" data-allow-clear="true" data-placeholder="Category" required>
                                <option value="0" disabled selected><?php echo get_phrase('none'); ?></option>
                                <?php foreach ($categories as $category){ ?>
                                    <option value="<?php echo $category['id']; ?>"><?php echo $category['sub_name']; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Days of Operation</label>

                        <div class="col-sm-7">
                            <input type="web" class="form-control" name="days" id="name" placeholder="Provide Days of Operation" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="parent" class="col-sm-3 control-label">Foreign Languages you speak</label>

                        <div class="col-sm-7">
                            <select name="languages" id = "languages" class="select2" data-allow-clear="true" data-placeholder="Languages" multiple required>
                                <option value="0" disabled><?php echo get_phrase('none'); ?></option>
                                <option value="Armenian">Armenian</option>
                                <option value="Russian">Russian</option>
                                <option value="Hebrew">Hebrew</option>
                                <option value="Spanish">Spanish</option>
                                <option value="Persian">Persian</option>
                                <option value="Arabic">Arabic</option>
                                <option value="French">French</option>
                            </select>
                        </div>
                    </div>

                    <!-- <div class="form-group">
                        <label for="parent" class="col-sm-3 control-label"><?php echo get_phrase('parent_category'); ?></label>

                        <div class="col-sm-7">
                            <select name="parent" id = "parent" class="select2" data-allow-clear="true" data-placeholder="<?php echo get_phrase('select_parent_category'); ?>" onchange="checkCategoryType(this.value)">
                                <option value="0"><?php echo get_phrase('none'); ?></option>
                                <?php foreach ($categories as $category): ?>
                                    <?php if ($category['parent'] == 0): ?>
                                        <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div> -->

                    

                    <div class="form-group" id = "thumbnail-picker-area">
                        <label class="col-sm-3 control-label">Logo<small>(JPG, PNG, GIF, max size:2Mb)</small> </label>

                        <div class="col-sm-7">

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 200px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('uploads/category_thumbnails/thumbnail.png'); ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="logo" accept="image/*" required>
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
                                    <img src="<?php echo base_url('uploads/category_thumbnails/thumbnail.png'); ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="picture1" accept="image/*" required>
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
                                    <img src="<?php echo base_url('uploads/category_thumbnails/thumbnail.png'); ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="picture2" accept="image/*" required>
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
                            <input type="text" class="form-control" name="full_name" id="name" placeholder="Provide Full Name" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Telephone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="telephone" id="telephone" placeholder="Provide Telephone Number" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Email Address</label>

                        <div class="col-sm-7">
                            <input type="Email" class="form-control" name="email" id="ref_business" placeholder="Provide Email Address" required>
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
                            <input type="text" class="form-control" name="ref_business" id="ref_business" placeholder="Provide Business Name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Full Name</label>

                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="ref_name" id="ref_name" placeholder="Provide Full Name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Telephone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="ref_telephone" id="ref_telephone" placeholder="Provide Telephone Number">
                        </div>
                    </div>

                    <div class="col-sm-offset-3 col-sm-5" style="padding-top: 10px;">
                            <button type="submit" class="btn btn-info"><?php echo get_phrase('add_category'); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div><!-- end col-->
</div>
