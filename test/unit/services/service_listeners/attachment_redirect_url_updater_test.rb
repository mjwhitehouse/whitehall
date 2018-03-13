require 'test_helper'

module ServiceListeners
  class AttachmentRedirectUrlUpdaterTest < ActiveSupport::TestCase
    extend Minitest::Spec::DSL

    let(:updater) { AttachmentRedirectUrlUpdater.new(attachment_data) }
    let(:attachment_data) { attachment.attachment_data }
    let(:worker) { mock('asset-manager-attachment-redirect-url-update-worker') }

    before do
      AssetManagerAttachmentRedirectUrlUpdateWorker.stubs(:new).returns(worker)
    end

    context 'when attachment has no associated attachment data' do
      let(:attachment) { FactoryBot.create(:html_attachment) }

      it 'does not update redirect URL of any assets' do
        worker.expects(:perform).never

        updater.update!
      end
    end
  end
end
