module SignInSupport
  def sign_in(user)
    visit root_path
  # fill_inは書き込み 
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
  # .click_onは引数の文字列と一致する要素をクリックするメソッド
    click_on("Log in")
  # 逆に.clickメソッドはクリックする前に要素を取得しなければならない
    expect(current_path).to eq root_path
  end
end