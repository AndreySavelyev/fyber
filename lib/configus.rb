Configus.build Rails.env do
  env :production do
    fyber_client 'fyber_client'
  end

  env :development do
    fyber_client 'fyber_client'
  end

  env :test do
    fyber_client 'fake_fyber_client'
  end
end
