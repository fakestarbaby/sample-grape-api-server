module API
  class Root < Grape::API
    prefix :api
    format :json

    mount API::V1::Root

    add_swagger_documentation(
      api_version: 'v1',
      hide_documentation_path: true
    )
  end
end
