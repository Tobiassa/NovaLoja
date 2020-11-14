json.extract! usuario_perfil, :id, :nome, :created_at, :updated_at
json.url usuario_perfil_url(usuario_perfil, format: :json)
