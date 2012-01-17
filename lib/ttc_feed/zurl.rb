class Zurl
  def initialize(base_url)
    @url_so_far = base_url
    @first_param_already_used = false
  end

  def method_missing(meth, *args)
    param_prefix = @first_param_already_used ? "&" : "?"

    @url_so_far << param_prefix << meth.to_s
    @url_so_far << "=" << args.first unless args.first.nil?

    @first_param_already_used = true
    self
  end

  def to_s
    @url_so_far
  end
end
