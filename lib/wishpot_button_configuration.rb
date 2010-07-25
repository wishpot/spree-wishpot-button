class WishpotButtonConfiguration < Configuration
  
  #Your partner key with wishpot, which can be found at http://www.wishpot.com/my/account/myid.aspx
  #This is recommended so that referred users/wishes etc can be tracked back to you
  preference :wishpot_pkey, :string, :default => 'spree'
  
  #Which button image you'd like to use.  Full list available in this document: http://bit.ly/addtowishpot
  preference :wishpot_button_image, :string, :default => 'http://www.wishpot.com/img/buttons/addtowishpot139px26px.png'
  
end
