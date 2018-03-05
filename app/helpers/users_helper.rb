module UsersHelper
  def timeline_date(created)
    created.strftime('%F')
  end

  # ruby strftimeメソッド
end
