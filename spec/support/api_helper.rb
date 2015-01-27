# Common case is for GET requests. For example, the following would GET "/v1/en/hotels/1.json"
#   hit_api "hotels/1"
#
# More complicated usage is supported. The following would POST { device_id: 'ABC' } in the body
#   hit_api "push_notification_configurations", {}, :post, { device_id: 'ABC' }
module ApiHelper
  def hit_api(path, options = {}, method = :get, parameters = {})
    path    = "/#{path}.json"
    method == :get ? visit(path) : page.driver.submit(method, path, parameters)

    JSON.parse(page.body) rescue page.body
  end

  def post_api(path, parameters = {})
    hit_api(path, {}, :post, parameters)
  end

  def put_api(path, parameters = {})
    hit_api(path, {}, :put, parameters)
  end
end
