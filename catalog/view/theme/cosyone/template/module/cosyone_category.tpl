<?php if(false){ ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content box-category">
	<ul>
       <?php foreach ($categories as $category_1) { ?>
       <?php if ($category_1['category_1_id'] == $category_1_id) { ?>
         <li class="open active"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
          <?php } else { ?>
          <li><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a> 
          <?php } ?>
          <?php if ($category_1['children']) { ?>
          <div class="sign"><span class="plus">+</span><span class="minus">-</span></div>
          <ul>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_2_id'] == $category_2_id) { ?>
            <li class="open active"><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
            <?php } else { ?>
          <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
          <?php } ?>
              <?php if ($category_2['children']) { ?>
              <div class="sign"><span class="plus">+</span><span class="minus">-</span></div>
              <ul>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                
                <?php if ($category_3['category_3_id'] == $category_3_id) { ?>
                <li class="active"><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                <?php } else { ?>
          <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
          <?php } ?>
                <?php } ?>
              </ul>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
  </div>
</div>
<script>        
	$('.box-category li').bind().click(function(e) {
	$(this).toggleClass("open").find('>ul').stop(true, true).slideToggle(500)
	.end().siblings().find('>ul').slideUp().parent().removeClass("open");
	e.stopPropagation();
	});
			
	$('.box-category li a').click(function(e) {
	e.stopPropagation();
	});
</script>
<?php } ?>
<ul class="catalogue__menu">
    
                    <?php foreach ($categories as $category_1) { ?>
                    <li class="catalogue__menu-item js-catalogue-menu-item  <?=($category_1['category_1_id'] == $category_1_id)? '_open _active': '' ?>">
                        <a class="catalogue__menu-item-button js-catalogue-menu-toggler <?=($category_1['category_1_id'] == $category_1_id)? '_open': '' ?>">
                            <span class="catalogue__menu-item-text"><?php echo $category_1['name']; ?></span>
                            <i class="catalogue__menu-item-toggler">
                                <svg class="catalogue__menu-item-toggler-icon" version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="540.2 90 336.9 612" >
                                    <polygon points="572.2,90 540.2,121.8 813.5,396 540.2,670.2 572.2,702 877.2,396 "/>
                                </svg>
                            </i>
                        </a>
                        <?php if ($category_1['children']) { ?>
                        <ul class="catalogue__submenu js-catalogue-submenu">
                            <?php foreach ($category_1['children'] as $category_2) { ?>
                            <li class="catalogue__submenu-item <?=($category_2['category_2_id'] == $category_2_id) ? '_active' : ''; ?>">
                                <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                            </li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                    </li>
                    <?php } ?>
                    
                    <li class="catalogue__menu-item _extra">
                        <a href="/manual" class="catalogue__menu-item-button">
                            <span class="catalogue__menu-item-text">
                                <span class="catalogue__menu-item-new">NEW!</span>
                                Собери сам!
                            </span>
                        </a>
                    </li>
                </ul>