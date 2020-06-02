
<div class="bg_color_1" >
    <div class="container " style="padding-top:80px;">
    <div class="row">
        <div class="col-sm" style="text-align: center">Houston</div>
        <div class="col-sm" style="text-align: center">San Antonio</div>
        <div class="col-sm" style="text-align: center">Dallas Fort Worth</div>
        <div class="col-sm" style="text-align: center">Austin</div>
        <div class="col-sm" style="text-align: center">El Paso</div>


    </div>
</div>
</div>

<!-- /hero_single -->
<section class="flat-highlights" >
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="highlights">
                    <ul class="menu-list" style="margin-bottom: 0px;">
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/1'); ?>" title="">
                                <i class="fa fa-briefcase fa-2x"></i>
                                <span>Businesses</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/2'); ?>" title="">
                                <i class="fa fa-check fa-2x"></i>
                                <span>Add Listing</span>
                            </a>

                        </li>
                        <li class="">
                            <a href="<?php echo base_url('Home/addlisting/3'); ?>" title="">
                                <i class="fa fa-user fa-2x"></i>
                                <span>Jobs</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/4'); ?>" title="">
                                <i class="fa fa-home fa-2x"></i>
                                <span>Housing/Offices</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/5'); ?>" title="">
                                <i class="fa fa-shopping-cart fa-2x"></i>
                                <span>Buy/Sell</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/6'); ?>" title="">
                                <i class="fa fa-wrench fa-2x"></i>
                                <span>Services</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/7'); ?>" title="">
                                <i class="fa fa-calendar fa-2x"></i>
                                <span>Events</span>
                            </a>

                        </li>
                        <li>
                            <a href="<?php echo base_url('Home/addlisting/8'); ?>" title="">
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
<section class="service-layout1 bg-accent s-space-custom3">
    <div class="container " style=" padding-bottom: 55px;">
        <div class="main_title_2">
            <?php if ($listings->parent==2): ?>
                <p>Add your listing by choosing one of these categories</p>    
            <?php endif ?>
            
        </div>
        <div class="row">
            <?php foreach ($listings as $row) { ?>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 item-mb">
                <div class="service-box1 bg-body text-center">
                    <img src="<?php echo base_url('uploads/classified_category_tumbnail/').$row->banner;?>" alt="service" class="img-fluid" height="50px" width="50px">
                    <h3 class="title-medium-dark mb-none"><a href="<?php if($row->id==9) {echo base_url('home/add/').$row->id;}else{echo base_url('home/add_form/').$row->id;} ?>" class="cardlink"><?php echo $row->sub_name; ?></a></h3>
                    <div class="view">&nbsp;</div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>

</section>
