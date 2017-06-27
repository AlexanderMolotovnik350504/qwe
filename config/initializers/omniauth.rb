Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'yeFMFgWBBpq7UcB9QDrxPk4Vk', '4eldsETUWhRFHzXJuZwv589u3ldSbNRAtXTge9JK7imwzLqxvj'
  provider :facebook, '772151902947109', 'b59ce8d79322fbddf1bd517369054fe0'
  provider :vkontakte, '5910183', 'LDKte77sLpwZxuAaOWUa'
end