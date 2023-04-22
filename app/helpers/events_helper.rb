# frozen_string_literal: true

module EventsHelper
  def only_woman_user_join
    return unless current_user.woman?

    link_to 'このもくもく会に参加する',
            event_attendance_url(@event),
            class: 'btn btn-primary',
            method: :post,
            data: { confirm: '申し込みます' }
  end

  def all_user_join
    link_to 'このもくもく会に参加する',
            event_attendance_url(@event),
            class: 'btn btn-primary',
            method: :post,
            data: { confirm: '申し込みます' }
  end
end
