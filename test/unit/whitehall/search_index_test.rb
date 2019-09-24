require "test_helper"

module Whitehall
  class SearchIndexTest < ActiveSupport::TestCase
    class ::SearchableClass
    end

    test "SearchIndex.add queues a search index add job for 10 seconds time to allow any transactions to complete" do
      searchable_thing = stub(class: SearchableClass, id: "id", locked?: false)

      SearchIndex.add(searchable_thing)
      job = SearchIndexAddWorker.jobs.last

      assert_equal %w(SearchableClass id), job["args"].take(2)
      assert_equal 10.seconds.from_now.to_i, job["at"]
    end

    test "SearchIndex.add does not queue a search index add job if a document is locked" do
      edition = create(:unpublished_edition, :with_locked_document)
      assert_raises LockedDocumentConcern::LockedDocumentError, "Cannot perform this operation on a locked document" do
        SearchIndex.add(edition)
      end

      assert_empty SearchIndexAddWorker.jobs
    end

    test "SearchIndex.delete queues a search index removal job for the instance based on its slug and rummager index" do
      searchable_thing = stub(search_index: { "link" => "full_slug" }, rummager_index: :index_name)

      SearchIndex.delete(searchable_thing)
      args = SearchIndexDeleteWorker.jobs.last["args"]

      assert_equal "full_slug", args[0]
      assert_equal "index_name", args[1]
    end
  end
end
