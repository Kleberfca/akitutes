<div id="related-products-notification" class="modal modal-xs modal-xs-bottom-sheet modal-zindex-top fade" tabindex="-1" role="dialog" q-hidden="true">
	<div class="modal-dialog modal-xs-dialog">
		<div class="js-close-modal-zindex-top modal-header p-all-half-xs" data-dismiss="modal" aria-hidden="true">
			<h5 class="m-top-half m-bottom-half">{{ '¡Agregado al carrito!' | translate }}</h5>
			<span class="btn btn-floating pull-right">
				{% include "snipplets/svg/times.tpl" with {fa_custom_class: "svg-inline--fa fa-lg pull-left m-none"} %}
			</span>
		</div>
		<div class="modal-body">

			{# Product added info #}
			<div class="row m-bottom-xs">
				<div class="col-md-6">
					<div class="js-cart-notification-item row m-bottom m-bottom-half-xs" data-store="cart-notification-item">
						<div class="col-md-3 col-xs-2 notification-img p-right-half">
							<img src="" class="js-cart-notification-item-img img-fluid" />
						</div>
						<div class="col-md-9 col-xs-10 text-left p-left-none">
							<div>
								<span class="js-cart-notification-item-name"></span>
								<span class="js-cart-notification-item-variant-container" style="display: none;">
									(<span class="js-cart-notification-item-variant"></span>)
								</span>
							</div>
							<div>
								<span class="js-cart-notification-item-quantity"></span>
								<span> x </span>
								<span class="js-cart-notification-item-price"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div>
						<span class="pull-left">
							<strong>{{ "Total" | translate }}</strong> 
							(<span class="js-cart-widget-amount">
								{{ "{1}" | translate(cart.items_count ) }} 
							</span>
							<span class="js-cart-counts-plural" style="display: none;">
								{{ 'productos' | translate }}):
							</span>
							<span class="js-cart-counts-singular" style="display: none;">
								{{ 'producto' | translate }}):
							</span>
						</span>
						<strong class="js-cart-total pull-right text-right">{{ cart.total | money }}</strong>
					</div>
					<a href="#" class="js-toggle-cart js-fullscreen-modal-open btn btn-primary btn-small full-width m-top-quarter m-top-half-xs" data-modal-url="modal-fullscreen-cart" data-dismiss="modal">
						{{ "Ver carrito" | translate }}
					</a>
				</div>
			</div>

			{# Product added recommendations #}
			<div class="js-related-products-notification-container" style="display: none"></div>
		</div>
	</div>
</div>