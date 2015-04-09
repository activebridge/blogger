class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
    end
  end

  def self.gather_repo_data(auth)
    client = Octokit::Client.new(access_token: auth['credentials']['token'])
    client.repositories
  end
end
