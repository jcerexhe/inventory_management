module StocksHelper
  # Boolean value to signify if record has been updated within the last month
  def recently_updated(item)
    if item.updated_at
      # if updated in the last month
      if (Time.now - 1.month) < item.updated_at
        return true
      else
        return false
      end
    else
      # if updated in the last month
      if (Time.now - 1.month) < item.created_at
        return true
      else
        return false
      end
    end
  end
end
