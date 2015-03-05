module Demo
  class Base < Grape::API
    mount Demo::V1::Users
  end
end
