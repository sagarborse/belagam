<?php $id = rand(1,10); $span =  12/$columns; ?>
   <div id="pavcarousel<?php echo $id;?>" class="widget-carousel box carousel slide <?php echo $addition_cls ?>  <?php if( isset($stylecls)&&$stylecls ) { ?>box-<?php echo $stylecls;?><?php } ?>">
	<?php if( isset($widget_heading)&&!empty($widget_heading) ){ ?>
	<div class="widget-heading box-heading">
		<?php echo $widget_heading; ?>
	</div>
	<?php } ?>


		<div class="carousel-inner">
			<?php

			$pages = array_chunk( $banners, $itemsperpage );?>

			<?php foreach ($pages as $k => $tbanners) {?>
			<div class="item <?php if($k==0) {?>active<?php } ?> no-margin">
				<?php foreach( $tbanners as $i => $banner ) {  $i=$i+1;?>
					<?php if( $i%$columns == 1 ) { ?>
					<div class="row">
					<?php } ?>

					<div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-<?php echo $span;?> col-xs-12">
						<div class="item-inner">
							<?php if ($banner['link']) { ?>
							<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="" /></a>
							<?php } else { ?>
							<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="" />
							<?php } ?>
						</div>
					</div>

					<?php if( $i%$columns == 0 || $i==count($tbanners) ) { ?>
					</div>
					<?php } ?>
				<?php } //endforeach; banner ?>
			</div>
			<?php } //endforeach; pages?>	
		</div>

		<?php if( count($banners) > $itemsperpage ){ ?>	
		<div class="carousel-controls">
			<a class="carousel-control left" href="#pavcarousel<?php echo $id;?>" data-slide="prev"><i class="fa fa-angle-left"></i></a>
			<a class="carousel-control right" href="#pavcarousel<?php echo $id;?>" data-slide="next"><i class="fa fa-angle-right"></i></a>
		</div>		
		<?php } ?>

    </div>
<?php if( count($banners) > 1 ){ ?>
<script type="text/javascript"><!--
 $('#pavcarousel<?php echo $id;?>').carousel({interval:false});
--></script>
<?php } ?>