{% if product.compare_at_price > product.price %}
    {% set price_discount_percentage = ((product.compare_at_price) - (product.price)) * 100 / (product.compare_at_price) %}
{% endif %}

{% set has_multiple_slides = product.images_count > 1 or product.video_url %}

{# Product availability #}

{% set has_product_available = product.available and product.display_price %}

<div class="container js-product-container js-product-detail js-shipping-calculator-container js-has-new-shipping" data-store="product-detail">
    <div class="row m-bottom m-bottom-half-xs">
        {% snipplet "breadcrumbs.tpl" %}
    </div>
    <div class="row" id="single-product" data-variants="{{product.variants_object | json_encode }}">
        <div class="col-xs-12 col-sm-6" data-store="product-image-{{ product.id }}">
            <div class="row">
                {% snipplet 'placeholders/product-detail-image-placeholder.tpl' %}
                <div id="product-slider-container" class="js-product-image-container product-slider-container {% if not has_multiple_slides %}product-single-image{% endif %}">
                    {% if product.images_count > 0 %}
                        <div class="js-swiper-product product-slider no-slide-effect-md swiper-container">
                            <div class="swiper-wrapper">
                                {% for image in product.images %}
                                    <div class="js-product-slide swiper-slide product-slide {% if store.useNativeJsLibraries() %}desktop-zoom-container{% endif %}" data-image="{{image.id}}" data-image-position="{{loop.index0}}" data-zoom-url="{{ image | product_image_url('original') }}">
                                    {% if store.useNativeJsLibraries() %}
                                        <div class="js-desktop-zoom p-relative d-block" style="padding-bottom: {{ image.dimensions['height'] / image.dimensions['width'] * 100}}%;">
                                    {% else %}
                                        <a href="{{ image | product_image_url('original') }}" class="js-desktop-zoom cloud-zoom" rel="position: 'inside', showTitle: false, loading: '{{ 'Cargando...' | translate }}'" style="padding-bottom: {{ image.dimensions['height'] / image.dimensions['width'] * 100}}%;">
                                    {% endif %}
                                            <img data-sizes="auto" src="{{ image | product_image_url('small') }}" data-srcset='{{  image | product_image_url('large') }} 480w, {{  image | product_image_url('huge') }} 640w, {{  image | product_image_url('original') }} 1024w' class="js-product-slide-img js-image-open-mobile-zoom product-slider-image img-absolute img-absolute-centered lazyautosizes lazyload  blur-up" {% if image.alt %}alt="{{image.alt}}"{% endif %} />
                                        {% if store.useNativeJsLibraries() %}
                                            <div class="js-desktop-zoom-big desktop-zoom-big product-slider-image hidden-xs" data-desktop-zoom="{{ image | product_image_url('original') }}"></div>
                                        {% endif %}
                                    {% if store.useNativeJsLibraries() %}
                                        </div>
                                    {% else %}
                                        </a>
                                    {% endif %}
                                    </div>
                                {% endfor %}
                                {% include 'snipplets/product-video.tpl' %}
                            </div>
                            {% if has_multiple_slides %}
                                <div class="js-swiper-product-pagination swiper-pagination visible-xs"></div>
                                <div class="js-swiper-product-prev swiper-button-prev hidden-xs">{% include "snipplets/svg/angle-left.tpl" with {fa_custom_class: "slider-arrow"} %}</div>
                                <div class="js-swiper-product-next swiper-button-next hidden-xs">{% include "snipplets/svg/angle-right.tpl" with {fa_custom_class: "slider-arrow"} %}</div>
                            {% endif %}
                        </div>
                    {% endif %}

                    {% set label_accent_classes = 'label label-circle label-secondary label-text label-accent' %}

                    {{ component(
                        'labels', {
                            prioritize_promotion_over_offer: true,
                            promotion_nxm_long_wording: false,
                            promotion_quantity_long_wording: true,
                            offer_quantity_long_wording: true,
                            offer_custom_wording: settings.offer_text,
                            shipping_custom_wording: settings.free_shipping_text,
                            no_stock_custom_wording: settings.no_stock_text,
                            labels_classes: {
                                group: 'js-labels-floating-group labels-floating m-left-quarter',
                                promotion: label_accent_classes,
                                promotion_primary_text: 'd-inline-block p-top-quarter weight-strong',
                                promotion_secondary_text: 'd-inline-block label-small',
                                offer: 'js-offer-label ' ~ label_accent_classes,
                                shipping: 'label label-circle label-primary-dark label-overlap',
                                no_stock: 'js-stock-label label label-circle label-primary label-accent label-overlap',
                            },
                        })
                    }}
                    <div class="visible-when-content-ready visible-xs">
                        <a href="#" class="js-open-mobile-zoom btn-floating" aria-label="{{ 'Zoom de la imagen' | translate }}">
                            <div class="zoom-svg-icon">
                                {% include 'snipplets/svg/arrows-alt.tpl' with {fa_custom_class: "svg-text-fill"} %}
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row hidden-xs">
                {% if has_multiple_slides %}
                    <div class="thumbs visible-when-content-ready m-top">
                        {% for image in product.images %}
                            <a href="#" class="js-product-thumb thumb-link" data-slide-index="{{loop.index0}}">
                                <img data-sizes="auto" src="{{ image | product_image_url('small') }}" data-srcset='{{  image | product_image_url('large') }} 480w, {{  image | product_image_url('huge') }} 640w' class="thumb-image lazyautosizes lazyload blur-up" {% if image.alt %}alt="{{image.alt}}"{% endif %} />
                            </a>
                        {% endfor %}

                        {# Video thumb #}

                        {% include 'snipplets/product-video.tpl' with {thumb: true} %}
                    </div>
                {% endif %}
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 product-form-container" data-store="product-info-{{ product.id }}">
            <h1 itemprop="name" class="js-item-name product-name" data-store="product-name-{{ product.id }}" data-component="product.name" data-component-value="{{ product.name }}">{{ product.name }}</h1>
            <div>
                {% if product.promotional_offer.script.is_percentage_off %}
                    <input class="js-promotional-parameter" type="hidden" value="{{product.promotional_offer.parameters.percent}}">
                {% endif %}
                <div class="product-price-container" data-store="product-price-{{ product.id }}">

                    <div class="m-bottom-quarter">
                        <h4 id="compare_price_display" class="js-compare-price-display product-price-compare price-compare weight-normal d-inline" {% if not product.compare_at_price or not product.display_price %}style="display:none;"{% endif %}>
                            {% if product.compare_at_price %}
                                {{ product.compare_at_price | money }}
                            {% endif %}
                        </h4>

                        {% set show_compare_price_saved_amount = not (settings.payment_discount_price and max_payment_discount.value > 0) and settings.compare_price_saved_money %}

                        {{ component('compare-price-saved-amount', {
                                visibility_condition: show_compare_price_saved_amount,
                                discount_percentage: false,
                                container_classes: "m-left-quarter",
                                text_classes: {
                                    amount_message: 'font-small',
                                },
                            })
                        }}
                    </div>

                    <h2 class="h1 product-price js-price-display d-inline" {% if not product.display_price %}style="display:none;"{% endif %} id="price_display" data-product-price="{{ product.price }}">
                    {% if product.display_price %}
                        {{ product.price | money }}
                    {% endif %}
                    </h2>
                    <span class="js-offer-label text-accent"{% if not product.compare_at_price or not product.display_price %}style="display:none;"{% endif %}>
                        <span>
                            <span class="js-offer-percentage">{{ price_discount_percentage |round }}</span>% OFF
                        </span>
                    </span>

                    {{ component('price-without-taxes', {
                            container_classes: "m-top-quarter font-small opacity-60",
                        })
                    }}

                    {{ component('payment-discount-price', {
                            visibility_condition: settings.payment_discount_price,
                            location: 'product',
                            container_classes: "h5 weight-normal text-accent m-top-half m-bottom-quarter",
                            text_classes: {
                              price: 'h3 product-price product-price-small-xs',
                            }
                        })
                    }}

                    {{ component('promotions-details', {
                        promotions_details_classes: {
                            container: 'row-fluid m-top',
                            promotion_title: 'h4 promo-title text-accent',
                            valid_scopes: 'promo-message m-bottom-none',
                            categories_combinable: 'promo-message m-bottom-none',
                            not_combinable: 'font-small m-top-quarter m-bottom-none',
                            progressive_discounts_table: 'table m-bottom-half m-top',
                            progressive_discounts_hidden_table: 'table-body-inverted',
                            progressive_discounts_show_more_link: 'btn-link btn-link-primary m-bottom-double',
                            progressive_discounts_promotion_quantity: 'font-weight-light text-lowercase'
                        },
                        svg_sprites: false,
                        custom_control_show: include("snipplets/svg/chevron-down.tpl", { fa_custom_class: "svg-inline--fa m-left-quarter" }),
                        custom_control_hide: include("snipplets/svg/chevron-up.tpl", { fa_custom_class: "svg-inline--fa m-left-quarter" }),
                    }) }}
                </div>
                {% snipplet 'placeholders/product-detail-form-placeholder.tpl' %}

                {# Product Installments button and info #}

                {% set hasDiscount = product.maxPaymentDiscount.value > 0 %}

                {% if product.show_installments and product.display_price %}
                    {% set installments_info = product.installments_info_from_any_variant %}
                    {% if installments_info or hasDiscount %}
                        <a href="#installments-modal" data-toggle="modal" data-modal-url="modal-fullscreen-payments" class="js-fullscreen-modal-open js-refresh-installment-data js-product-payments-container display-when-content-ready link-module" {% if not (product.get_max_installments and product.get_max_installments(false)) %}style="display: none;"{% endif %}>
                            {% if settings.product_detail_installments %}

                                {% set max_installments_without_interests = product.get_max_installments(false) %}
                                {% set installments_without_interests = max_installments_without_interests and max_installments_without_interests.installment > 1 %}

                                <div class="m-bottom-quarter">
                                    {% set card_icon_color = installments_without_interests ? 'svg-accent-fill' : 'svg-text-fill' %}
                                    {% set installment_text_color = installments_without_interests ? 'text-accent' : '' %}

                                    {% include "snipplets/svg/credit-card.tpl" with {fa_custom_class: "payment-credit-card m-right-quarter " ~ card_icon_color} %}
                                    {{ component('installments', {'location': 'product_detail', container_classes: { installment: "installments d-inline-block text-uppercase " ~ installment_text_color}}) }}
                                </div>
                            {% endif %}

                            {# Max Payment Discount #}

                            {% set hideDiscountContainer = not (hasDiscount and product.showMaxPaymentDiscount) %}
                            {% set hideDiscountDisclaimer = not product.showMaxPaymentDiscountNotCombinableDisclaimer %}

                            <div class="js-product-discount-container m-left-none m-bottom-half p-right-double full-width" {% if hideDiscountContainer %}style="display: none;"{% endif %}>
                                {% if settings.accent_color_active %}
                                    {% set svg_payment_color = 'svg-accent-fill' %}
                                {% else %}
                                    {% set svg_payment_color = 'svg-primary-fill' %}
                                {% endif %}
                                <div class="d-flex align-items-baseline">
                                    {% include "snipplets/svg/money-bill.tpl" with { fa_custom_class: "payment-credit-card m-right-quarter " ~ svg_payment_color } %}
                                    <span class="m-left-quarter {% if settings.accent_color_active %}text-accent{% endif %}">
                                        <span>
                                            <strong>{{ product.maxPaymentDiscount.value }}% {{'de descuento' | translate }}</strong>
                                            {{'pagando con' | translate }} {{ product.maxPaymentDiscount.paymentProviderName }}
                                        </span>
                                        <div class="js-product-discount-disclaimer font-small" {% if hideDiscountDisclaimer %}style="display: none;"{% endif %}>{{ "No acumulable con otras promociones" | translate }}</div>
                                    </span>
                                </div>
                            </div>


                            {% if product.show_installments and product.display_price %}
                                <div id="btn-installments" class="btn-link btn-link-small" {% if not (product.get_max_installments and product.get_max_installments(false)) %}style="display: none;"{% endif %}>
                                    {% set store_set_for_new_installments_view = store.is_set_for_new_installments_view %}
                                    {% if store_set_for_new_installments_view %}
                                        {% if not settings.product_detail_installments %}
                                            {% include "snipplets/svg/credit-card.tpl" with {fa_custom_class: "payment-credit-card m-right-quarter svg-primary-fill"} %}
                                        {% endif %}
                                        {{ "Ver medios de pago" | translate }}
                                    {% else %}
                                        {{ "Ver el detalle de las cuotas" | translate }}
                                    {% endif %}
                                </div>
                                <div class="visible-xs link-module-icon-right">
                                    {% include "snipplets/svg/angle-right.tpl" %}
                                </div>
                            {% endif %}
                        </a>
                    {% endif %}
                {% endif %}

                {# Free shipping minimum message #}

                {% set has_free_shipping = cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price %}
                {% set has_product_free_shipping = product.free_shipping %}

                {% if not product.is_non_shippable and has_product_available and (has_free_shipping or has_product_free_shipping) %}
                    <div class="free-shipping-message p-top p-bottom">
                        {% include "snipplets/svg/truck.tpl" with {fa_custom_class: "shipping-truck m-right-quarter svg-accent-fill"} %}
                        <span>
                            <strong class="text-accent">{{ "Envío gratis" | translate }}</strong>
                            <span {% if has_product_free_shipping %}style="display: none;"{% else %}class="js-shipping-minimum-label"{% endif %}>
                                {{ "superando los" | translate }} <span>{{ cart.free_shipping.min_price_free_shipping.min_price }}</span>
                            </span>
                        </span>
                        {% if not has_product_free_shipping %}
                            <div class="js-free-shipping-discount-not-combinable font-small m-top-quarter">
                                {{ "No acumulable con otras promociones" | translate }}
                            </div>
                        {% endif %}
                    </div>
                {% endif %}

                <form id="product_form" method="post" action="{{ store.cart_url }}" class="display-when-content-ready" data-store="product-form-{{ product.id }}">
                    <input type="hidden" name="add_to_cart" value="{{product.id}}" />
                    {% if product.variations %}
                        {% include "snipplets/variants.tpl" with {'quickshop': false} %}
                    {% endif %}

                    {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
                    {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'catalog': "Consultar", 'nostock' : settings.no_stock_text} %}

                    {# Add to cart CTA #}

                    {% if product.available and product.display_price %}
                        {% if settings.product_stock %}
                            <div class="font-small m-bottom">
                                <span class="js-product-stock">{{ product.selected_or_first_available_variant.stock }}</span> {{ "en stock" | translate }}
                            </div>
                        {% endif %}
                        {% if settings.last_product %}
                            <div class="{% if product.variations %}js-last-product {% endif %}text-accent font-medium text-uppercase m-top-none m-bottom"{% if product.selected_or_first_available_variant.stock != 1 %} style="display: none;"{% endif %}>
                                <strong>{{ settings.last_product_text }}</strong>
                            </div>
                            {% if settings.latest_products_available %}
                                {% set latest_products_limit = settings.latest_products_available %}
                                <div class="{% if product.variations %}js-latest-products-available {% endif %}text-accent font-medium text-uppercase m-top-none m-bottom" data-limit="{{ latest_products_limit }}" {% if product.selected_or_first_available_variant.stock > latest_products_limit or product.selected_or_first_available_variant.stock == null or product.selected_or_first_available_variant.stock == 1 %} style="display: none;"{% endif %}>
                                    <strong>{{ "¡Solo quedan" | translate }} <span class="js-product-stock">{{ product.selected_or_first_available_variant.stock }}</span> {{ "en stock!" | translate }}</strong>
                                </div>
                            {% endif %}
                        {% endif %}
                    {% endif %}
                    <input type="submit" class="js-prod-submit-form js-addtocart btn btn-primary btn-block m-bottom d-inline-block {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} data-store="product-buy-button" data-component="product.add-to-cart"/>

                    {# Fake add to cart CTA visible during add to cart event #}
                    {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "m-top-none m-bottom"} %}

                    {% if settings.ajax_cart %}
                        <div class="js-added-to-cart-product-message pull-left full-width m-bottom p-bottom-quarter m-top-half" style="display: none;">
                            {{'Ya agregaste este producto.' | translate }}
                            <a href="#" class="js-toggle-cart js-fullscreen-modal-open btn-link btn-link-small p-left-quarter"  data-modal-url="modal-fullscreen-cart">{{ 'Ver carrito' | translate }}</a>
                        </div>
                    {% endif %}

                    {# Free shipping visibility message #}

                    {% set free_shipping_minimum_label_changes_visibility = has_free_shipping and cart.free_shipping.min_price_free_shipping.min_price_raw > 0 %}

                    {% set include_product_free_shipping_min_wording = cart.free_shipping.min_price_free_shipping.min_price_raw > 0 %}

                    {% if not product.is_non_shippable and has_product_available and has_free_shipping and not has_product_free_shipping %}

                        {# Free shipping add to cart message #}

                        {% if include_product_free_shipping_min_wording %}

                            {% include "snipplets/shipping/shipping-free-rest.tpl" with {'product_detail': true} %}

                        {% endif %}

                        {# Free shipping achieved message #}

                        <div class="{% if free_shipping_minimum_label_changes_visibility %}js-free-shipping-message{% endif %} p-top-quarter m-bottom p-bottom-quarter text-accent weight-strong" {% if not cart.free_shipping.cart_has_free_shipping %}style="display: none;"{% endif %}>
                            {{ "¡Genial! Tenés envío gratis" | translate }}
                        </div>

                    {% endif %}

                    {# Define contitions to show shipping calculator and store branches on product page #}

                    {% set show_product_fulfillment = settings.shipping_calculator_product_page and (store.has_shipping or store.branches) and not product.free_shipping and not product.is_non_shippable %}

                    {% if show_product_fulfillment %}

                        <div class="row clear-both">

                            {# Shipping calculator and branch link #}

                            <div class="container-fluid">
                                <div id="product-shipping-container" class="product-shipping-calculator list-readonly m-bottom-double" {% if not product.display_price or not product.has_stock %}style="display:none;"{% endif %} data-shipping-url="{{ store.shipping_calculator_url }}">
                                    {% if store.has_shipping %}
                                        <div class="row">
                                            {% include "snipplets/shipping/shipping_cost_calculator.tpl" with { 'shipping_calculator_variant' : product.selected_or_first_available_variant, 'product_detail' : true} %}
                                        </div>
                                    {% endif %}
                                    {% if store.branches %}
                                        {# Link for branches #}

                                        {% include "snipplets/shipping/branch-details.tpl" with {'product_detail': true} %}
                                    {% endif %}
                                </div>
                            </div>
                        </div>
                    {% endif %}

                    {# Product informative banners #}

                    {% include 'snipplets/product-informative-banner.tpl' %}

                    {% include 'snipplets/social-widgets.tpl'%}
                    {% if not settings.show_description_bottom %}
                        <div class="description user-content m-top" data-store="product-description-{{ product.id }}">{{ product.description }}</div>
                    {% endif %}
                </form>
            </div>
        </div>
    </div>
	<div class="row visible-when-content-ready">
		{% if settings.show_description_bottom %}
    		<div class="col-xs-12 user-content m-top" data-store="product-description-{{ product.id }}">
    			<div class="description user-content">{{ product.description }}</div>
    		</div>
		{% endif %}
		<div class="col-xs-12 visible-when-content-ready">
			<div class="comments-area m-top">
                {% if settings.show_product_fb_comment_box %}
				    <div class="fb-comments" data-href="{{ product.social_url }}" data-num-posts="5" data-width="100%"></div>
                {% endif %}
            </div>
		</div>
	</div>
</div>

{# Related products #}

{% include 'snipplets/related-products.tpl' %}

{# Payments details #}

{% include 'snipplets/product-payment-details.tpl' %}

<div class="js-mobile-zoom-panel mobile-zoom-panel">
    {% include "snipplets/svg/circle-notch.tpl" with {fa_custom_class: "svg-inline--fa js-mobile-zoom-spinner mobile-zoom-spinner fa-2x fa-spin svg-text-fill"} %}
    <div class="js-mobile-zoomed-image mobile-zoom-image-container">
       {# Container to be filled with the zoomable image #}
    </div>
    <a class="js-close-mobile-zoom btn btn-default btn-floating">
        {% include "snipplets/svg/times.tpl" with {fa_custom_class: "svg-inline--fa fa-2x"} %}
    </a>
</div>

{# Product video modal on mobile #}

{% include 'snipplets/product-video.tpl' with {product_video_modal: true} %}
