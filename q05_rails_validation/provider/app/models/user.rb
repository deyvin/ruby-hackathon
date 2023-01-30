class User < ApplicationRecord

  vaiidates :pj_validate_one, if: :pj?
  vaiidates :pj_validate_two, if: :pj?

  vaiidates :pf_validate_one, if: :pf?
  vaiidates :pf_validate_two, if: :pf?

  def pj?
    document.length > 11
  end

  def pf?
    document.length > 11
  end

  def pj_validate_one
  end

  def pj_validate_two
  end

  def pf_validate_one
  end

  def pf_validate_two
  end
end
