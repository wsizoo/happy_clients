module StoriesHelper
  def format_case_link(story)
    if story != nil
      link_to story.case_link, story.case_link, :target => '_blank'
    else
      'I was too lazy to add the case link.'
    end
  end

  def format_case_link_home(story)
    if story.case_link == 'http://' || story.case_link.blank?
      'I was too lazy to add the case link.'
    else
      link_to story.case_link, story.case_link, :target => '_blank'
    end
  end

  def format_website_link(story)
    if story != nil
      link_to story.website, story.website, :target => '_blank'
    else
      'I was too lazy to add the website url.'
    end
  end

  def format_website_link_home(story)
    if story.website == 'http://' || story.website.blank?
      'I was too lazy to add the website url.'
    else
      link_to story.website, story.website, :target => '_blank'
    end
  end
end
