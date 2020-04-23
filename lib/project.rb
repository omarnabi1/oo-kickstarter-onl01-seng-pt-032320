class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers.push(backer)
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end


end