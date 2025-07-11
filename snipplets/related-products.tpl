{# Related products visibility conditions #}

{% set related_products = [] %}
{% set related_products_ids_from_app = product.metafields.related_products.related_products_ids %}
{% set has_related_products_from_app = related_products_ids_from_app | get_products | length > 0 %}
{% if has_related_products_from_app %}
    {% set related_products = related_products_ids_from_app | get_products %}
{% endif %}
{% if related_products is empty %}
    {% set max_related_products_length = 8 %}
    {% set max_related_products_achieved = false %}
    {% set related_products_without_stock = [] %}
    {% set max_related_products_without_achieved = false %}

    {% if related_tag %}
        {% set products_from_category = related_products_from_controller %}
    {% else %}
        {% set products_from_category = category.products | shuffle %}
    {% endif %}

    {% for product_from_category in products_from_category if not max_related_products_achieved and product_from_category.id != product.id %}
        {%  if product_from_category.stock is null or product_from_category.stock > 0 %}
            {% set related_products = related_products | merge([product_from_category]) %}
        {% elseif (related_products_without_stock | length < max_related_products_length) %}
            {% set related_products_without_stock = related_products_without_stock | merge([product_from_category]) %}
        {% endif %}
        {%  if (related_products | length == max_related_products_length) %}
            {% set max_related_products_achieved = true %}
        {% endif %}
    {% endfor %}
    {% if (related_products | length < max_related_products_length) %}
        {% set number_of_related_products_for_refill = max_related_products_length - (related_products | length) %}
        {% set related_products_for_refill = related_products_without_stock | take(number_of_related_products_for_refill) %}

        {% set related_products = related_products | merge(related_products_for_refill)  %}
    {% endif %}
{% endif %}

{% set complementary_products = complementary_product_list | length > 0 %}

{# Show alternative products when there are default category alternatives with no complementaries or manually selected alternatives #}
{% set alternative_products = related_products | length > 0 and not (complementary_products and source_alternative == 'default') %}

{# Set related products classes #}

{% set section_class = 'container' %}
{% set container_class = 'm-top-double m-bottom' %}
{% set title_container_class = 'title-container' %}
{% set title_class = 'subtitle' %}
{% set products_container_class = 'products-slider swiper-container-horizontal p-relative' %}
{% set slider_container_class = 'swiper-container grid-row' %}
{% set swiper_wrapper_class = 'swiper-wrapper' %}
{% set slider_control_class = 'hidden-xs m-top-quarter' %}
{% set slider_control_prev_class = 'swiper-button-prev' %}
{% set slider_control_next_class = 'swiper-button-next' %}
{% set slider_control_pagination_class = 'swiper-pagination m-top' %}
{% set control_prev = include ('snipplets/svg/angle-left.tpl') %}
{% set control_next = include ('snipplets/svg/angle-right.tpl') %}

{# Alternative products #}

{% set alternative_data_component = source_alternative == 'default' ? 'related-products' : 'alternative-products' %}

{% if alternative_products %}
    {{ component(
        'products-section',{
            title: settings.products_related_title,
            id: 'related-products',
            data_component: alternative_data_component,
            products_amount: related_products | length,
            products_array: related_products,
            product_template_path: 'snipplets/single_product.tpl',
            product_template_params: {'slide_item': true},
            slider_controls_position: 'bottom',
            slider_pagination: true,
            svg_sprites: false,
            section_classes: {
                section: 'js-related-products ' ~  section_class,
                container: container_class,
                title_container: title_container_class,
                title: title_class,
                products_container: products_container_class,
                slider_container: 'js-swiper-related ' ~ slider_container_class,
                slider_wrapper: swiper_wrapper_class,
                slider_control: slider_control_class,
                slider_control_prev: 'js-swiper-related-prev ' ~ slider_control_prev_class,
                slider_control_next: 'js-swiper-related-next ' ~ slider_control_next_class,
                slider_control_pagination: 'js-swiper-related-pagination ' ~ slider_control_pagination_class,
            },
            custom_control_prev: control_prev,
            custom_control_next: control_next,
        }) 
    }}
{% endif %}

{# Complementary products #}

{% set complementary_section_id = 'complementary-products' %}

{% if complementary_products %}
    {{ component(
        'products-section',{
            title: settings.products_complementary_title,
            id: complementary_section_id,
            data_component: complementary_section_id,
            products_amount: complementary_product_list | length,
            products_array: complementary_product_list,
            product_template_path: 'snipplets/single_product.tpl',
            product_template_params: {'slide_item': true},
            slider_controls_position: 'bottom',
            slider_pagination: true,
            svg_sprites: false,
            section_classes: {
                section: 'js-complementary-products ' ~ section_class,
                container: container_class,
                title_container: title_container_class,
                title: title_class,
                products_container: products_container_class,
                slider_container: 'js-swiper-complementary ' ~ slider_container_class,
                slider_wrapper: swiper_wrapper_class,
                slider_control: slider_control_class,
                slider_control_prev: 'js-swiper-complementary-prev ' ~ slider_control_prev_class,
                slider_control_next: 'js-swiper-complementary-next ' ~ slider_control_next_class,
                slider_control_pagination: 'js-swiper-complementary-pagination ' ~ slider_control_pagination_class,
            },
            custom_control_prev: control_prev,
            custom_control_next: control_next,
        })
    }}
{% endif %}