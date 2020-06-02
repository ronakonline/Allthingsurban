<div class="row">
    <div class="col-lg-10">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    Details
                </div>
            </div>
            <div class="panel-body">

                <form action="<?php echo site_url('admin/classified_approve/').$classifieds[0]['id']; ?>" method="post" enctype="multipart/form-data" role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Legal Name</label>

                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="business_name" id="name" placeholder="Provide Business Legal Name" value="<?php echo $classifieds[0]['business_name']; ?>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Address</label>

                        <div class="col-sm-7">
                            <textarea rows="4" class="form-control" name="address" placeholder="Provide Business Address" required><?php echo $classifieds[0]['address']; ?></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Phone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="business_telephone" id="name" placeholder="Provide button Phone Number" value="<?php echo $classifieds[0]['business_telephone']; ?>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Email Address</label>

                        <div class="col-sm-7">
                            <input type="Email" class="form-control" name="business_email" id="name" placeholder="Provide Business Email Address" value="<?php echo $classifieds[0]['business_email']; ?>" required>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Business Website</label>

                        <div class="col-sm-7">
                            <input type="web" class="form-control" name="website" id="name" placeholder="Provide Business Website" value="<?php echo $classifieds[0]['website']; ?>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Description of Business</label>

                        <div class="col-sm-7">
                            <textarea rows="4" class="form-control" name="description" placeholder="Provide Description of Business" required><?php echo $classifieds[0]['description']; ?></textarea>
                        </div>
                    </div>

                    

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Days of Operation</label>

                        <div class="col-sm-7">
                            <input type="web" class="form-control" name="days" id="name" placeholder="Provide Days of Operation" value="<?php echo $classifieds[0]['days']; ?>" required>
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
                                    <img src="<?php echo base_url('uploads/classified/').$classifieds[0]['logo']; ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                    
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id = "thumbnail-picker-area">
                        <label class="col-sm-3 control-label">Picture<small>(JPG, PNG, GIF, max size:2Mb)</small> </label>

                        <div class="col-sm-7">

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 200px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('uploads/classified/').$classifieds[0]['picture1']; ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id = "thumbnail-picker-area">
                        <label class="col-sm-3 control-label">Picture<small>(JPG, PNG, GIF, max size:2Mb)</small> </label>

                        <div class="col-sm-7">

                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 200px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('uploads/classified/').$classifieds[0]['picture2']; ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
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
                            <input type="text" class="form-control" name="full_name" id="name" placeholder="Provide Full Name" value="<?php echo $classifieds[0]['full_name']; ?>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Telephone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="telephone" id="telephone" placeholder="Provide Telephone Number" value="<?php echo $classifieds[0]['telephone']; ?>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Email Address</label>

                        <div class="col-sm-7">
                            <input type="Email" class="form-control" name="email" id="ref_business" placeholder="Provide Email Address" value="<?php echo $classifieds[0]['email']; ?>" required>
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
                            <input type="text" class="form-control" name="ref_business" id="ref_business" placeholder="Provide Business Name" value="<?php echo $classifieds[0]['ref_business']; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Full Name</label>

                        <div class="col-sm-7">
                            <input type="text" class="form-control" name="ref_name" id="ref_name" placeholder="Provide Full Name" value="<?php echo $classifieds[0]['ref_name']; ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">Telephone Number</label>

                        <div class="col-sm-7">
                            <input type="tel" class="form-control" name="ref_telephone" id="ref_telephone" placeholder="Provide Telephone Number" value="<?php echo $classifieds[0]['ref_telephone']; ?>">
                        </div>
                    </div>

                    <div class="col-sm-offset-3 col-sm-5" style="padding-top: 10px;">
                        <button type="submit" class="btn btn-info">Approve</button>
                    </div>
                </form>
            </div>
        </div>
    </div><!-- end col-->
</div>
