module LoginHelpers
  def login(user)
    post login_path, params: { email: user.email, password: "password" }
  end
end
