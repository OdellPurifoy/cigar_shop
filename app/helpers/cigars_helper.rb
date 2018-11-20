module CigarsHelper
  def cigar_author(cigar)
    user_signed_in? && current_user.id == cigar.user_id
  end
end
