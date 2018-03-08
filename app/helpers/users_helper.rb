module UsersHelper
  def timeline_date(created)
    created.strftime('%F')
  end

end
