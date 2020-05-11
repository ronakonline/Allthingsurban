<!-- start page title -->
<div class="row ">
  <div class="col-lg-12">
    <a href="<?php echo site_url('admin/city_form/add'); ?>" class="btn btn-primary alignToTitle"><i class="entypo-plus"></i><?php echo get_phrase('add_new_city'); ?></a>
  </div><!-- end col-->
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-primary" data-collapsed="0">
      <div class="panel-heading">
        <div class="panel-title">
          <?php echo get_phrase('cities'); ?>
        </div>
      </div>
      <div class="panel-body">
        <table class="table table-bordered datatable">
          <thead>
            <tr>
              <th width="80"><div>#</div></th>
              <th><div><?php echo get_phrase('city_name');?></div></th>
              <th><div><?php echo get_phrase('country');?></div></th>
              <th><div><?php echo get_phrase('options');?></div></th>
            </tr>
          </thead>
          <tbody>
            <?php
            $counter = 0;
            foreach ($cities as $city): ?>
            <tr>
              <td><?php echo ++$counter; ?></td>

              <td><?php echo $city['name']; ?></td>
              <td>
                <?php
                $country_details = $this->crud_model->get_countries($city['country_id'])->row_array();
                echo $country_details['name'];
                ?>
              </td>
              <td style="text-align: center;">
                <a href="<?php echo site_url('admin/city_form/edit/'.$city['id']); ?>" class="btn btn-default btn-sm btn-icon icon-left">
                  <i class="entypo-pencil"></i>
                  <?php echo get_phrase('edit'); ?>
                </a>
                <a href="#" class="btn btn-danger btn-sm btn-icon icon-left" onclick="confirm_modal('<?php echo site_url('admin/cities/delete/'.$city['id']); ?>');">
                  <i class="entypo-cancel"></i>
                  <?php echo get_phrase('delete'); ?>
                </a>

              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>
