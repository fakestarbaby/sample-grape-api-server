module API
  module V1
    class Products < Grape::API
      resource :products do
        # GET /api/v1/product
        desc 'Return all products.'
        get do
          Product.all
        end
      end
    end
  end
end
