/* App JS */

;(function () {

    var app = {

        SELECTORS: {
            header: '.js-header',
            headerPlaceholder: '.js-header-placeholder',
            categoryNavItem: '.js-category-nav-item',
            categoryNavMenu: '.js-category-nav-menu',
            categoryNavArrow: '.js-category-nav-arrow',
            catalogueMenuItem: '.js-catalogue-menu-item',
            catalogueMenuToggler: '.js-catalogue-menu-toggler',
            catalogueSubMenu: '.js-catalogue-submenu',
            itemPopupShowButton: '.js-show-item-popup',
            itemPopup: '.js-item-popup',
            contactPopupShowButton: '.js-show-contact-popup',
            checkoutPopupShowButton: '.js-show-checkout-popup',
            contactPopup: '.js-contact-popup',
            checkoutPopup: '.js-checkout-popup',
            slider: '.js-slider',
            itemColor: '.js-item-color',
            itemShowcaseImg: '.js-item-showcase-img',
            itemThumbImg: '.js-item-thumb-img'
        },

        CLASSES: {
            active: '_active',
            hidden: '_hidden',
            open: '_open',
            flowing: '_flowing'
        },

        init: function () {
            this.initEventListeners();
            this.initSlider();
            this.initPopups();
            this.initHeaderPlaceholder();
        },

        initEventListeners: function () {
            $(document).on('click', this.SELECTORS.catalogueMenuToggler, this.toggleCatalogueSubmenu.bind(this));
            $(document).on('click', this.SELECTORS.itemColor, this.selectColor.bind(this));
            $(document).on('click', this.SELECTORS.itemThumbImg, this.changeShowcaseImg.bind(this));
            $(document).on('scroll', this.setHeaderState.bind(this));
        },

        initPopups: function () {
            var self = this;
            $(document).on('click', this.SELECTORS.itemPopupShowButton, function(){
                product_id = $(this).attr('id');
                $.ajax({
                    url: 'index.php?route=product/quickview&product_id='+$(this).attr('id'),
                    dataType: 'html',      
                    success: function(html) {
                        $('.popup__card').html(html);
                        $.magnificPopup.open({
                            items: {
                                src: self.SELECTORS.itemPopup,
                                type: 'inline'
                            },
			    removalDelay: 300
                        });
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });

               
            });
            $(this.SELECTORS.contactPopupShowButton).magnificPopup({
                items: {
                    src: this.SELECTORS.contactPopup,
                    type: 'inline'
                },
		removalDelay: 300
            })
            },
        initPopups2: function () {
            
            
            
            $.magnificPopup.open({
                items: {
                    src: this.SELECTORS.checkoutPopup,
                    type: 'inline'
                }
            })
            
            
        },

        toggleCatalogueSubmenu: function (event) {
            
            var $self = $(event.currentTarget);
            if(!$self.hasClass(this.CLASSES.open)){
                $(this.SELECTORS.catalogueMenuToggler)
                .removeClass(this.CLASSES.open)
                .closest(this.SELECTORS.catalogueMenuItem)
                .find(this.SELECTORS.catalogueSubMenu)
                .slideUp()
            }
            $self.toggleClass(this.CLASSES.open)
                .closest(this.SELECTORS.catalogueMenuItem)
                .find(this.SELECTORS.catalogueSubMenu)
                .slideToggle();
                
        },

        selectColor: function (event) {
            var $self = $(event.currentTarget);

            $(this.SELECTORS.itemColor).removeClass(this.CLASSES.active);
            $self.addClass(this.CLASSES.active);

        },

        changeShowcaseImg: function (event) {
            var $self = $(event.currentTarget),
                thumbImgPath = $self.attr('src');

            $(this.SELECTORS.itemShowcaseImg).attr('src', thumbImgPath);
        },

        initSlider: function (event) {
            $(this.SELECTORS.slider).owlCarousel({
                items: 3,
                center: true,
                loop: true,
                dots: true,
                smartSpeed: 800,
                autoplay: true,
                autoplayTimeout: 3000
            });
        },

        initHeaderPlaceholder: function () {
            $(this.SELECTORS.headerPlaceholder).css('height', $(this.SELECTORS.header).innerHeight());
        },

        setHeaderState: function () {

            if ($(document).scrollTop() > $(this.SELECTORS.header).innerHeight()) {
                $(this.SELECTORS.header).addClass(this.CLASSES.flowing);
            } else {
                $(this.SELECTORS.header).removeClass(this.CLASSES.flowing);
            }
        }
    };

    $(document).ready(function () {
        app.init();
    });
    
    
          $('.js-contact-popup, .categories__contact').on('submit', function(e){
           e.preventDefault();
       //submitHandler: function(form) {
          $.ajax({
            url: '/index.php?route=information/contact',
            type: 'post',
            data: $(this).parent().parent('form').serialize(),
            dataType: 'json',
            beforeSend: function() {
              
            },
            complete: function() {
                //alert("Ваш заказ не получен? Но это не точно");
            },
            success: function(json) { 
                alert("Ваши данные получены"); 
//              if (json['success']) {
//                //location = json['success'];
//                alert("Ваш заказ получен"); 
//              }else{
//                  alert("Ваш заказ не получен");
//              }
            }
          });
        //}
      });
}());