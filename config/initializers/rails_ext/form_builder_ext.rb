module ActionView::Helpers
  class FormBuilder
    def button(value = "Save", options = {})
      options = {:type => 'submit',
                 :class => 'button'}.merge(options)
      %Q{<button class="#{options[:class]}" type="#{options[:type]}">
      <img src="/images/web-app-theme/key.png" alt="#{value}">#{value}</img>
    </button>}
    end

    def error_class(field_name)
      have_errors?(field_name) ? 'error' : ''
    end

    def have_errors?(field_name)
      !error_message_on(:base).blank? || !error_message_on(field_name).blank?
    end

    def base_error
      output = ''
      unless error_messages.blank?
        output << %Q{<li id="errorLi">
            <h4>There is a problem with your submission</h4>
            <p id="errorMsg">Errors have been <strong>highlighted</strong> below</p>
          </li>}
      end
      output << (have_errors?(:base) ? %Q{<li class="error">#{error_message_on(:base, :css_class=>'field_error')}</li>} : '')
    end

    def label_with_required(method, text = nil, options = {})
      required = options.delete(:required) ? "<span class=\"req\">*</span>".html_safe : ''
      label_without_required(method, text, options) << required
    end

    alias_method_chain :label, :required
  end
end
