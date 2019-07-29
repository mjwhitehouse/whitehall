Given(/^a locked document titled "([^"]*)"$/) do |title|
  document = create(:document, locked: true)
  @edition = create(:published_news_article, title: title, document: document)
end

And(/^the locked document is tagged to organisation "([^"]*)"$/) do |organisation_name|
  organisation = Organisation.find_by(name: organisation_name)
  @edition.organisations = [organisation]
  @edition.save
end

And(/^I search for a document titled "([^"]*)" in the list of featurable documents$/) do |title|
  click_on "Features"
  fill_in "title", with: title
  click_on "enter"
end

Then(/^I cannot see the document in the list of featurable documents$/) do
  within "#search_results" do
    assert page.has_no_css?(record_css_selector(@edition))
  end
end

And(/^the locked document is tagged to the world location "([^"]*)"$/) do |world_location_name|
  world_location = WorldLocation.find_by!(name: world_location_name)
  @edition.world_locations = [world_location]
  @edition.save
end

And(/^I visit the world location admin page for "([^"]*)"$/) do |world_location_name|
  world_location = WorldLocation.find_by!(name: world_location_name)
  visit admin_world_location_path(world_location)
end

And(/^the locked document is tagged to the topical event "([^"]*)"$/) do |topical_event_name|
  topical_event = TopicalEvent.find_by(name: topical_event_name)
  @edition.topical_events = [topical_event]
  @edition.save
end

And(/^I visit the topical event admin page for "([^"]*)"$/) do |topical_event_name|
  topical_event = TopicalEvent.find_by!(name: topical_event_name)
  visit admin_topical_event_classification_featurings_path(topical_event)
end