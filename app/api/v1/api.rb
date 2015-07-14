class V1::API < Grape::API
  version 'v1', using: :path

  mount V1::Resources::Teams
end
