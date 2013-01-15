# Defines an override method for AR::Base's as_json method to
# exclude fields we don't want in any of the json output. We also
# want to exclude nil values.
module ResumeJson

  def as_json(options = {})
    hide_fields = {:except => [
                    :created_at,
                    :updated_at,
                    :id,
                    :applicant_id
                  ]}
    # Merge the hide_fields and any other options, then delete nil values
    # and convert it all to json
    super(options.merge(hide_fields)).tap do |json|
      json.delete_if{|_, v| v.nil?}.as_json
    end

  end

end