# encoding: utf-8

class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  attr_accessible :body, :title

  def to_param
    title_short = title
    title_short = title_short.gsub(/[àáạảãâầấậẩẫăằắặẳẵÀÁẠẢÃĂẰẮẶẲẴÂẦẤẬẨẪ]/i,"a")
    title_short = title_short.gsub(/[èéẹẻẽêềếệểễÈÉẸẺẼÊỀẾỆỂỄ]/i,"e")
    title_short = title_short.gsub(/[ìíịỉĩÌÍỊỈĨ]/i,"i")
    title_short = title_short.gsub(/[òóọỏõôồốộổỗơờớợởỡÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠ]/i,"o")
    title_short = title_short.gsub(/[ùúụủũưừứựửữƯỪỨỰỬỮÙÚỤỦŨ]/i,"u")
    title_short = title_short.gsub(/[ỳýỵỷỹỲÝỴỶỸ]/i,"y")
    title_short = title_short.gsub(/[đĐ]/i,"d")
    title_short = title_short.gsub(/[^a-z0-9]+/i, '-')
    "#{id}-#{title_short}"
  end
end
