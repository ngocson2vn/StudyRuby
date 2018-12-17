TokenVault::AuthorizedService.transaction do
  service = TokenVault::AuthorizedService.lock.where(service_name: 'finc_account_manager').first
  service.application_token = 'D6ngG2chQcbaxuJYJPAFKgku7_sMmGdRGbTAzNpZ89d2BgMUufgxB9WYGbsy'
  service.save
end


::AuthorizedService.transaction do
  service = ::AuthorizedService.lock.where(service_name: 'finc_account_manager').first
  service.application_token = 'D6ngG2chQcbaxuJYJPAFKgku7_sMmGdRGbTAzNpZ89d2BgMUufgxB9WYGbsy'
  service.save
end


::AuthorizedService.transaction do
  services = ::AuthorizedService.lock.where(service_name: service_name).
  if services.
  service.application_token = 'D6ngG2chQcbaxuJYJPAFKgku7_sMmGdRGbTAzNpZ89d2BgMUufgxB9WYGbsy'
  service.save
end


TokenVault::AuthorizedService.transaction do
	service = TokenVault::AuthorizedService.lock.find_by(service_name: 'requl_mobile')
	puts service.base_url
end


require 'rake'
Rankie::Application.load_tasks
::Rails.env='staging'
Rake::Task['token_vault:update_vault'].invoke


([Rails.root.basename.to_s] + Settings.authorized_services).each do |service_name|
  application_token = TokenVault::ParameterStore.get_application_token(service_name, ::Rails.env)
  unless application_token.nil?
    puts service_name
    puts application_token
  end
end