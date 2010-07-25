class WishpotButtonHooks < Spree::ThemeSupport::HookListener
  insert_after :cart_form, '/wishpot_button'
end
