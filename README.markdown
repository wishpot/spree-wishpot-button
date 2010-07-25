= The Wishpot Button

Each extension loaded by Spree will override the views and stylesheets of those that precede so you will need to configure their load order. Put something like the following in the file config/preinitializer.rb:

    SPREE_EXTENSIONS_LOAD_ORDER = [:all, :wishpot_button, :site]

SUMMARY
=======

Wishpot is a free universal wishlist and gift registry service. This extension adds an "add to wishlist" button next to your "add to cart" button for integration with Wishpot.com.  The benefits of a universal registry over a store-specific registry are numerous, but primarily users are less likely to abandon their wishlists when they have the added utility of being able to use them at multiple stores.


OPTIONAL CONFIGURATION
--------

There is no additional configuration required, however there are some optional customizations you can make, in the lib/wishpot_button_configuration.rb file:

1) If you're interested in using [Wishpot Social Commerce](http://www.wishpot.com/social-commerce), or the Wishpot Whitelabel Wishlist product, it would be useful to create a Wishpot account so you can configure a partner key.  This will ensure that wishes added from your site are tracked as such.  Even if you're not interested in those products for now, having this set would allow you to enable them later and track all of your data.

2) You can change the "add to wishpot" button image to any of our pre-created designs, or a button of your choosing. 


