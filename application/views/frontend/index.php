<!DOCTYPE html>
<html lang="en">

	<head>

	    <!-- Meta tags and seo configuration -->
	    <?php include 'site_meta.php';?>

	    <!-- Top css library files -->
	    <?php include 'includes_top.php';?>
        <?php
			if ($page_name == 'home' || $page_name == '404' || $page_name == 'addlisting' || $page_name == 'jobs'){  ?>
                <link href="<?php echo base_url();?>assets/frontend/css/home.css" rel="stylesheet">

			<?php  }  ?>

	</head>

	<body>

		<div id="page">

			<!-- Header -->
			<?php
			if ($page_name == 'home' || $page_name == '404')
				include 'header_listing.php';
			else if ($page_name == 'listings' || $page_name == 'listing/create')
				include 'header_listing.php';
			else if ($page_name == 'directory_listing')
				include 'header_home.php';
			else
				include 'header.php';
			?>

			<!-- Main page -->
			<main>
				<?php include $page_name . '.php'; ?>
			</main>

			<!-- Site footer -->
			<?php
				if(!($page_name == 'listings' && $this->session->userdata('listings_view') == 'list_view')):
					include 'footer.php';
				endif;
			?>
		</div>

		<!-- Signin popup -->
		<?php include 'signin_popup.php';?>

		<!-- Back to top button -->
		<div id="toTop"></div>

		<!-- Bottom js library files -->
		<?php include 'includes_bottom.php';?>
		
		<!--modal-->
		<?php include 'modal.php'; ?>

	</body>
</html>
