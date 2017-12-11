module ApplicationHelper
	def active?(path)
		"active" if current_page?(path)
	end

	def badge_btn status
		badge_span_generator status
	end

	private

		def badge_span_generator status
			case status
			when 'submitted'
				content_tag(:span, status.titleize, class: 'badge badge-primary')
			when 'approved'
				content_tag(:span, status.titleize, class: 'badge badge-success')
			when 'rejected'
				content_tag(:span, status.titleize, class: 'badge badge-danger')
			when 'pending'
				content_tag(:span, status.titleize, class: 'badge badge-primary')
			when 'confirmed'
				content_tag(:span, status.titleize, class: 'badge badge-success')
			end
		end
end
