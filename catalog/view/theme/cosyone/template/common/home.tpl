
<?php echo $header; ?>

<?php if(false){ ?>
<script type="text/javascript">
	$("li.home").addClass("current");
	$(".breadcrumb_wrapper").hide();
</script>
<div class="container main">
  <?php echo $home_top_top; ?>
  <div class="home_top_wrapper">
<?php echo $home_top_left; ?><?php echo $home_top_center; ?><?php echo $home_top_right; ?>
</div>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> homepage">
    <?php echo $content_top; ?>
     <?php echo $content_bottom_half; ?>
     <?php echo $content_bottom; ?>
     </div>
    <?php echo $column_right; ?>
    </div>
</div>
<?php } ?>
<?php echo $content_top; ?>

<div class="categories">
    <div class="categories__item _rack container">
        <div class="categories__item-wrap">
            <div class="categories__item-title">
                <h2 class="categories__item-title-bold">Стеллажи</h2>
                под любой интерьер
            </div>
            <div class="categories__item-desc">
                Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру
                сгенерировать несколько абзацев более менее осмысленного
                текста рыбы на русском языке
            </div>
            <div class="categories__item-actions">
                <a href="/shelvings" class="button">Перейти в каталог</a>
                <button class="button _transparent js-show-contact-popup">Консультация</button>
            </div>
        </div>
    </div>

    <div class="categories__item _closet container">
        <div class="categories__item-wrap">
            <div class="categories__item-title">
                <h2 class="categories__item-title-bold">Шкафы</h2>
            </div>
            <div class="categories__item-desc">
                Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру
                сгенерировать несколько абзацев
            </div>
            <div class="categories__item-actions">
                <a href="/furniture" class="button">Перейти в каталог</a>
                <button class="button _transparent js-show-contact-popup">Консультация</button>
            </div>
        </div>
    </div>

    <div class="categories__item _sliding">
        <div class="container">
            <div class="categories__item-wrap">
                <div class="categories__item-title">
                    <h2 class="categories__item-title-bold">Раздвижные конструкции</h2>
                </div>
                <div class="categories__item-desc">
                    Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру
                    сгенерировать несколько абзацев
                </div>
                <div class="categories__item-actions">
                    <a href="/sliding_systems" class="button">Перейти в каталог</a>
                    <button class="button _transparent js-show-contact-popup">Консультация</button>
                </div>
            </div>
        </div>
    </div>

    <div class="categories__additional">
        <div class="container">
            <div class="categories__makeown">
                <div class="categories__makeown-wrap">
                    <div class="categories__makeown-title">ЗОЛОТЫЕ РУКИ?</div>
                    <div class="categories__makeown-subtitle">
                        Собери самостоятельно шкаф своей мечты!
                    </div>
                    <a href="/manual" class="button">Инструкция по сборке</a>
                </div>
            </div>

            <div class="categories__contact">
                <div class="categories__contact-head">
                    <div class="categories__contact-title">
                        <div class="categories__contact-title-text">
                            Остались вопросы?
                        </div>
                        <div class="categories__contact-title-subtext">
                            Задайте их здесь!
                        </div>
                    </div>
                    <?php if ($logo) { ?>
                        <a class="categories__contact-logo" href="<?php echo $home; ?>">
                            <img src="<?php echo $logo; ?>" class="categories__contact-logo-img" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                        </a>
                    <?php } ?>
                </div>

                <form action="#" class="form">
                    <div class="form__container">
                        <div class="form__column">
                            <div class="form__item">
                                <label class="form__label">Введите Ваше имя</label>
                                <input type="text" class="form__input" placeholder="Ваше имя">
                            </div>
                            <div class="form__item">
                                <label class="form__label">Введите Ваш e-mail</label>
                                <input type="text" class="form__input" placeholder="Ваш E-mail" required="required">
                            </div>
                        </div>
                        <div class="form__column">
                            <div class="form__item">
                                <label class="form__label">Текст сообщения</label>
                                <textarea class="form__textarea" placeholder="Ваше сообщение"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form__actions">
                        <button type="submit" class="button _black">Отправить</button>
                    </div>
                </form>
            </div>
            
        </div>
    </div>
</div>



<?php echo $footer; ?> 