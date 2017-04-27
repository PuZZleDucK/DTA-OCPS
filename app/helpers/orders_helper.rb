module OrdersHelper

  def calc_line_total line
    if not line.item.special_qty.nil? then
      special_quantity = line.quantity / line.item.special_qty
      normal_quantity = line.quantity % line.item.special_qty
      line.item.unit_price * normal_quantity + line.item.special_price * special_quantity
    else
      line.item.unit_price * line.quantity
    end
  end

  def calc_order_total order
    total = 0
    order.order_lines.each do |line|
      total += calc_line_total line
    end
    total
  end
end
