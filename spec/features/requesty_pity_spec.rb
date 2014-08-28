feature 'Users request a pityparty' do
  scenario 'the user chooses the reason(s) for sadness' do
    input_reason
    expect(page).to #have a countdown appear
  end
end