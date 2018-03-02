require 'test_helper'

class DanmakusControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #
  test "can create an danmaku" do
    post "/dplayer/v2/",
      params: { author: "awing", color:	"#fff", player: "demo", text: "fffffff", time: 0, type:	"right"}
    assert_response :success
    result = JSON.parse(response.body)
    #result['code'].should == 0
    #puts result['code']
    #puts result
  end

  test "can read an danmaku" do
    post "/dplayer/v2/",
      params: { author: "awing", color:	"#fff", player: "demo", text: "fffffff", time: 0, type:	"right"}
    assert_response :success

    get "/dplayer/v2/?id=demo"
    assert_response :success
    result = JSON.parse(response.body)
      #.first
    #result['code'] == 0
    #puts result
    #assert_select "danmaku"
    #assert_select {"code":0,"data":{"id":980190963,"author":"awing","color":"#fff","player":"demo","text":"fffffff","ip":"127.0.0.1","referer":null,"time":0.0,"type":"right","created_at":"2018-03-01T13:03:48.983Z","updated_at":"2018-03-01T13:03:48.983Z"}}
  end

  test "should create article" do
    #post dplayer_v2_url, params: { id: 12 }, headers: { "HTTP_REFERER" => "http://example.com/home" }
    #post dplayer_v2_url, params: { article: { body: 'Rails is awesome!', title: 'Hello Rails' }
    #puts @response
  end
end
