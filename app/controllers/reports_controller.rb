class ReportsController < ApplicationController
  before_filter :authenticate_user!
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }

  def subjects
    @subjects = subject_items
  end
end
