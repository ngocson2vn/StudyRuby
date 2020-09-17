require "faraday"

## HTTPリクエスト設定（Faraday）
uri = "https://staging-f4b-job.finc.com/"
conn = Faraday::Connection.new(:url => uri) do |builder|
    ## ログを標準出力に出したい時(本番はコメントアウトでいいかも)
    builder.use Faraday::Response::Logger

    ## アダプター選択（選択肢は他にもあり）
    builder.use Faraday::Adapter::NetHttp

	builder.use Faraday::Request::BasicAuthentication, "emi.takiguchi", "11e27fe24c74fa29f157a76f0de6daf76a"
end

res = conn.post "job/wellness_survey/job/stg/job/cron_create_answerers/build"
p res.body