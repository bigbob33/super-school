class ReportsController < ApplicationController
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }

  def subjects
    @subjects = subject_items
  end
end
