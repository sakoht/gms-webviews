APP_CONFIG ||= {}

APP_CONFIG.merge!(YAML.load_file(Rails.root.join('config', 'gsc.yml'))[Rails.env])

GSC_WEB_PATH =  APP_CONFIG['gsc']['web_path']
