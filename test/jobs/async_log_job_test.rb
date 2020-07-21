require 'test_helper'

class AsyncLogJobTest < ActiveJob::TestCase
  test "Enqueue AsyncLogJob" do
    assert_enqueued_with(job: AsyncLogJob) do # キューにジョブが追加されるかどうかをテスト
      AsyncLogJob.perform_later(message: "from test")
    end
  end
end
