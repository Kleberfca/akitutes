<div class="js-cart-item {% if item.product.is_non_shippable %}js-cart-item-non-shippable{% else %}js-cart-item-shippable{% endif %} cart-table-row ajax-cart-item row" data-item-id="{{ item.id }}" data-store="cart-item-{{ item.product.id }}" data-component="cart.line-item">

  {% set compare_at_price = item.product.compare_at_price %}

  {# Cart item image #}
  <div class="col-xs-2 ajax-cart-item-image-col p-right-none p-left-half-xs">
    <img src="{{ item.featured_image | product_image_url('medium') }}" class="img-responsive" />
  </div>
  <div class="col-xs-10 col-md-6 p-right-half-xs">

    {# Cart item name #}
    <a class="ajax-cart-item-link cart-item-name text-underline h5-xs full-width-xs pull-left p-right-double-xs m-bottom-half" href="{{ item.url }}" data-component="line-item.name">
      <span data-component="name.short-name">{{ item.short_name }}</span><small data-component="name.short-variant-name">{{ item.short_variant_name }}</small>
    </a>
    
    {{ component(
      'cart-labels', {
        group: true,
        labels_classes: {
          group: 'full-width-container m-bottom-half-xs m-bottom-quarter',
          label: 'd-inline-block label label-primary label-primary-dark font-small-extra m-right-quarter m-bottom-quarter text-left'
        },
      })
    }}

    {# Cart item quantity controls #}
    <div class="pull-left m-top-half" data-component="line-item.subtotal">
      <button type="button" class="js-cart-quantity-btn cart-quantity-btn cart-quantity-btn-left small" onclick="LS.minusQuantity({{ item.id }}, true)" data-component="quantity.minus">
        <div class="cart-quantity-svg-icon">
          {% include "snipplets/svg/minus.tpl" %}
        </div>
      </button>
      <div class="cart-quantity-input-container d-inline-block">

        {# Always place this spinner before the quantity input #}
        
        <span class="js-cart-input-spinner cart-item-spinner" style="display: none;">
          {% include "snipplets/svg/circle-notch.tpl" with {fa_custom_class: "svg-inline--fa fa-spin svg-text-fill"} %}
        </span>
        <input type="number" name="quantity[{{ item.id }}]" data-item-id="{{ item.id }}" value="{{ item.quantity }}" pattern="\d*" class="js-cart-quantity-input cart-quantity-input small" data-component="quantity.value" data-component-value="{{ item.quantity }}"/>
      </div>
      <button type="button" class="js-cart-quantity-btn cart-quantity-btn cart-quantity-btn-right small" onclick="LS.plusQuantity({{ item.id }}, true)" data-component="quantity.plus">
        <div class="cart-quantity-svg-icon">
          {% include "snipplets/svg/plus.tpl" %}
        </div>
      </button>
    </div>

    {# Cart item mobile subtotal #}
    <div class="visible-xs cart-item-subtotal pull-right {% if not compare_at_price %}p-top-half m-top-quarter{% endif %}">
      {% if compare_at_price %}
        <div class="cart-compare-price-container">
          <span class="text-accent font-small">-{{ item.product.promotional_price_percentage | round }}%</span>
          <span class="js-cart-item-subtotal-compare-price price-compare font-small opacity-80 weight-normal" data-line-item-id="{{ item.id }}" data-component="subtotal_compare_price.value" data-component-value='{{ item.compare_at_price_subtotal | money }}'>{{ item.compare_at_price_subtotal | money }}</span>
        </div>
      {% endif %}
      <span class="js-cart-item-subtotal h5-xs weight-strong " data-line-item-id="{{ item.id }}" data-component="subtotal.value" data-component-value="{{ item.subtotal | money }}">{{ item.subtotal | money }}</span>
    </div>
  </div>

  {# Cart item subtotal #}
  <div class="col-xs-4 col-md-3 ajax-cart-item-subtotal cart-item-subtotal text-right hidden-xs">
    {% if compare_at_price %}
      <div class="cart-compare-price-container">
        <span class="text-accent font-small">-{{ item.product.promotional_price_percentage | round }}%</span>
        <span class="js-cart-item-subtotal-compare-price price-compare weight-normal font-small opacity-80" data-line-item-id="{{ item.id }}" data-component="subtotal_compare_price.value" data-component-value='{{ item.compare_at_price_subtotal | money }}'>{{ item.compare_at_price_subtotal | money }}</span>
      </div>
    {% endif %}
    <span class="js-cart-item-subtotal h6-xs weight-strong" data-line-item-id="{{ item.id }}" data-component="subtotal.value" data-component-value="{{ item.subtotal | money }}">{{ item.subtotal | money }}</span>
  </div>

  {# Cart item delete #}
  <div class="col-xs-1 cart-delete-container text-right">
    <button type="button" class="cart-btn-delete ajax-cart-btn-delete pull-right p-top-none" onclick="LS.removeItem({{ item.id }}, true)" data-component="line-item.remove">
      <div class="cart-delete-svg-icon small">
        {% include "snipplets/svg/trash-o.tpl" with {fa_custom_class: "svg-trash-icon svg-text-fill"} %}
      </div>
    </button>
  </div>
</div>