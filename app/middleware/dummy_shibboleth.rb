class DummyShibboleth

  def initialize( app )
    @app = app
  end

  #TODO: a test user would be preferable to using me...
  def call( env )
    env['HTTP_REMOTE_USER'] ||= 'acoffman'
    @app.call( env )
  end

end
