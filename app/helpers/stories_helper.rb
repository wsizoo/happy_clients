module StoriesHelper
  def format_case_link(story)
    if story != nil
      link_to story.case_link, story.case_link, :target => '_blank'
    end
  end

  def format_case_link_home(stories)
    if stories != nil
      link_to stories.case_link, stories.case_link, :target => '_blank'
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
    if story != nil
      link_to story.website, story.website, :target => '_blank'
    else
      'I was too lazy to add the website url.'
    end
  end
end
