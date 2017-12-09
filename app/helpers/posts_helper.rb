module PostsHelper
	def status_btn status
		status_span_generator status
	end

	private

		def status_span_generator status
			case status
			when 'submitted'
				content_tag(:span, status.titleize, class: 'btn btn-primary')
			when 'approved'
				content_tag(:span, status.titleize, class: 'btn btn-success')
			when 'rejected'
				content_tag(:span, status.titleize, class: 'btn btn-danger')
			end
		end
end
