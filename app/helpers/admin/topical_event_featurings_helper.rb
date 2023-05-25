module Admin::TopicalEventFeaturingsHelper
  def featurable_offsite_links_for_topical_event(featurable_offsite_links, topical_event)
    @featurable_offsite_links_for_topical_event ||= featurable_offsite_links.reject do |link|
      topical_event.topical_event_featurings.detect do |featuring|
        featuring.offsite_link == link
      end
    end
  end

  def featurable_editions_for_topical_event(editions, topical_event)
    @featurable_editions_for_topical_event ||= editions.reject do |edition|
      topical_event.topical_event_featurings.detect do |featuring|
        featuring.edition == edition
      end
    end
  end
end
