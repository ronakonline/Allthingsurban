<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-primary" data-collapsed="0">
      <div class="panel-heading">
        <div class="panel-title">
          <?php echo get_phrase('claimed_listing'); ?>
        </div>
      </div>
      <div class="panel-body">
        <table class="table table-bordered datatable">
          <thead>
            <tr>
              <th width="80"><div>#</div></th>
              <th><div><?php echo get_phrase('listing');?></div></th>
              <th><div><?php echo get_phrase('name');?></div></th>
              <th><div><?php echo get_phrase('phone');?></div></th>
              <th><div><?php echo get_phrase('additional_information');?></div></th>
              <th><div><?php echo get_phrase('status');?></div></th>
              <th><div><?php echo get_phrase('option');?></div></th>
            </tr>
          </thead>
          <tbody>
            <?php
            $counter = 0;
            $this->db->order_by('id', 'DESC');
            $claimed_listings = $this->db->get_where('claimed_listing')->result_array();
            foreach ($claimed_listings as $claimed_listing): ?>
            <tr>
              <td><?php echo ++$counter; ?></td>
              <td>
                <a href="<?php echo get_listing_url($claimed_listing['listing_id']) ?>" target="blank">
                  <?php echo $this->db->get_where('listing', array('id' => $claimed_listing['listing_id']))->row('name'); ?>
                </a>
              </td>
              <td><?php echo $this->db->get_where('user', array('id' => $claimed_listing['user_id']))->row('name'); ?></td>
              <td><?php echo $claimed_listing['phone']; ?></td>
              <td><?php echo $claimed_listing['additional_information']; ?></td>
              <td>
                <?php if($claimed_listing['status'] == 1): ?>
                  <span class="label label-success"><?php echo get_phrase('approved'); ?></span>
                <?php endif; ?>

                <?php if($claimed_listing['status'] == 0): ?>
                  <span class="label label-warning"><?php echo get_phrase('pendig'); ?></span>
                <?php endif; ?>
              </td>
              <td class="text-center">
                <a href="<?php echo site_url('admin/claimed_listings/approved/'.$claimed_listing['id'].'/'.$claimed_listing['listing_id']); ?>" class="btn btn-info btn-sm btn-icon icon-left">
        					<i class="entypo-check"></i>
        					<?php echo get_phrase('approve'); ?>
        				</a>
        				<a href="#" class="btn btn-danger btn-sm btn-icon icon-left" onclick="confirm_modal('<?php echo site_url('admin/claimed_listings/delete/'.$claimed_listing['id']); ?>');">
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
</div><!-- end col-->
</div>
