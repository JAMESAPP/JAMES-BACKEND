json.array!(@timesheets) do |timesheet|
  json.extract! timesheet, :id, :date, :leaving_early, :official_shift, :checkin, :checkin_machine, :checkin_motive, :checkout, :checkout_machine, :checkout_motive
  json.url timesheet_url(timesheet, format: :json)
end
