describe PayloadTransformer do
  let(:payload) {
    payload = <<-JSON
    {
        "forced": false,
        "compare": "https://github.com/platanus/ksec/compare/1812d863cabd...e6fd3266d211",
        "pusher": {
            "email": "leandro@platan.us",
            "name": "ldlsegovia"
        },
        "sender": {
            "following_url": "https://api.github.com/users/ldlsegovia/following{/other_user}",
            "gists_url": "https://api.github.com/users/ldlsegovia/gists{/gist_id}",
            "organizations_url": "https://api.github.com/users/ldlsegovia/orgs",
            "url": "https://api.github.com/users/ldlsegovia",
            "events_url": "https://api.github.com/users/ldlsegovia/events{/privacy}",
            "html_url": "https://github.com/ldlsegovia",
            "subscriptions_url": "https://api.github.com/users/ldlsegovia/subscriptions",
            "avatar_url": "https://avatars.githubusercontent.com/u/3026413?v=3",
            "repos_url": "https://api.github.com/users/ldlsegovia/repos",
            "received_events_url": "https://api.github.com/users/ldlsegovia/received_events",
            "gravatar_id": "",
            "starred_url": "https://api.github.com/users/ldlsegovia/starred{/owner}{/repo}",
            "site_admin": false,
            "login": "ldlsegovia",
            "type": "User",
            "id": 3026413,
            "followers_url": "https://api.github.com/users/ldlsegovia/followers"
        },
        "repository": {
            "issues_url": "https://api.github.com/repos/platanus/ksec/issues{/number}",
            "deployments_url": "https://api.github.com/repos/platanus/ksec/deployments",
            "svn_url": "https://github.com/platanus/ksec",
            "has_wiki": true,
            "forks_url": "https://api.github.com/repos/platanus/ksec/forks",
            "mirror_url": null,
            "stargazers_count": 1,
            "subscription_url": "https://api.github.com/repos/platanus/ksec/subscription",
            "notifications_url": "https://api.github.com/repos/platanus/ksec/notifications{?since,all,participating}",
            "collaborators_url": "https://api.github.com/repos/platanus/ksec/collaborators{/collaborator}",
            "updated_at": "2016-01-13T16:09:21Z",
            "private": true,
            "pulls_url": "https://api.github.com/repos/platanus/ksec/pulls{/number}",
            "owner": {
                "email": "contact@platan.us",
                "name": "platanus"
            },
            "full_name": "platanus/ksec",
            "issue_comment_url": "https://api.github.com/repos/platanus/ksec/issues/comments{/number}",
            "contents_url": "https://api.github.com/repos/platanus/ksec/contents/{+path}",
            "id": 5237899,
            "keys_url": "https://api.github.com/repos/platanus/ksec/keys{/key_id}",
            "issue_events_url": "https://api.github.com/repos/platanus/ksec/issues/events{/number}",
            "tags_url": "https://api.github.com/repos/platanus/ksec/tags",
            "downloads_url": "https://api.github.com/repos/platanus/ksec/downloads",
            "assignees_url": "https://api.github.com/repos/platanus/ksec/assignees{/user}",
            "statuses_url": "https://api.github.com/repos/platanus/ksec/statuses/{sha}",
            "has_pages": false,
            "git_refs_url": "https://api.github.com/repos/platanus/ksec/git/refs{/sha}",
            "open_issues_count": 3,
            "clone_url": "https://github.com/platanus/ksec.git",
            "watchers_count": 1,
            "git_tags_url": "https://api.github.com/repos/platanus/ksec/git/tags{/sha}",
            "labels_url": "https://api.github.com/repos/platanus/ksec/labels{/name}",
            "forks": 0,
            "size": 26842,
            "comments_url": "https://api.github.com/repos/platanus/ksec/comments{/number}",
            "fork": false,
            "milestones_url": "https://api.github.com/repos/platanus/ksec/milestones{/number}",
            "commits_url": "https://api.github.com/repos/platanus/ksec/commits{/sha}",
            "releases_url": "https://api.github.com/repos/platanus/ksec/releases{/id}",
            "description": "Ksec Access Control",
            "archive_url": "https://api.github.com/repos/platanus/ksec/{archive_format}{/ref}",
            "contributors_url": "https://api.github.com/repos/platanus/ksec/contributors",
            "events_url": "https://api.github.com/repos/platanus/ksec/events",
            "default_branch": "master",
            "html_url": "https://github.com/platanus/ksec",
            "watchers": 1,
            "compare_url": "https://api.github.com/repos/platanus/ksec/compare/{base}...{head}",
            "trees_url": "https://api.github.com/repos/platanus/ksec/git/trees{/sha}",
            "stargazers": 1,
            "git_url": "git://github.com/platanus/ksec.git",
            "forks_count": 0,
            "merges_url": "https://api.github.com/repos/platanus/ksec/merges",
            "has_issues": true,
            "ssh_url": "git@github.com:platanus/ksec.git",
            "blobs_url": "https://api.github.com/repos/platanus/ksec/git/blobs{/sha}",
            "master_branch": "master",
            "git_commits_url": "https://api.github.com/repos/platanus/ksec/git/commits{/sha}",
            "hooks_url": "https://api.github.com/repos/platanus/ksec/hooks",
            "has_downloads": true,
            "languages_url": "https://api.github.com/repos/platanus/ksec/languages",
            "name": "ksec",
            "language": "Ruby",
            "url": "https://github.com/platanus/ksec",
            "homepage": null,
            "created_at": 1343682296,
            "pushed_at": 1455579442,
            "teams_url": "https://api.github.com/repos/platanus/ksec/teams",
            "open_issues": 3,
            "organization": "platanus",
            "branches_url": "https://api.github.com/repos/platanus/ksec/branches{/branch}",
            "subscribers_url": "https://api.github.com/repos/platanus/ksec/subscribers",
            "stargazers_url": "https://api.github.com/repos/platanus/ksec/stargazers"
        },
        "created": false,
        "deleted": false,
        "commits": [
            {
                "committer": {
                    "username": "ldlsegovia",
                    "name": "Leandro Segovia",
                    "email": "ldlsegovia@gmail.com"
                },
                "added": [
                    "rails/app/views/angular/job-editor/documents-worker.html.erb",
                    "rails/app/views/angular/job-editor/documents.html.erb",
                    "rails/app/views/angular/job-editor/push-dialog.html.erb"
                ],
                "author": {
                    "username": "ldlsegovia",
                    "name": "Leandro Segovia",
                    "email": "ldlsegovia@gmail.com"
                },
                "distinct": true,
                "timestamp": "2016-02-15T20:37:12-03:00",
                "modified": [
                    "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/module.js",
                    "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/parts/frame-ctrl.js",
                    "rails/config/locales/es-CL.yml"
                ],
                "url": "https://github.com/platanus/ksec/commit/e6fd3266d211e83d945ec926bc5bce5810578e91",
                "message": "refactor(templates): move job editor templates to views/angular",
                "removed": [
                    "web/templates/job-editor/documents-worker.html",
                    "web/templates/job-editor/documents.html",
                    "web/templates/job-editor/push-dialog.html"
                ],
                "id": "e6fd3266d211e83d945ec926bc5bce5810578e91"
            }
        ],
        "format": "json",
        "after": "e6fd3266d211e83d945ec926bc5bce5810578e91",
        "webhook": {
            "forced": false,
            "compare": "https://github.com/platanus/ksec/compare/1812d863cabd...e6fd3266d211",
            "pusher": {
                "email": "leandro@platan.us",
                "name": "ldlsegovia"
            },
            "sender": {
                "following_url": "https://api.github.com/users/ldlsegovia/following{/other_user}",
                "gists_url": "https://api.github.com/users/ldlsegovia/gists{/gist_id}",
                "organizations_url": "https://api.github.com/users/ldlsegovia/orgs",
                "url": "https://api.github.com/users/ldlsegovia",
                "events_url": "https://api.github.com/users/ldlsegovia/events{/privacy}",
                "html_url": "https://github.com/ldlsegovia",
                "subscriptions_url": "https://api.github.com/users/ldlsegovia/subscriptions",
                "avatar_url": "https://avatars.githubusercontent.com/u/3026413?v=3",
                "repos_url": "https://api.github.com/users/ldlsegovia/repos",
                "received_events_url": "https://api.github.com/users/ldlsegovia/received_events",
                "gravatar_id": "",
                "starred_url": "https://api.github.com/users/ldlsegovia/starred{/owner}{/repo}",
                "site_admin": false,
                "login": "ldlsegovia",
                "type": "User",
                "id": 3026413,
                "followers_url": "https://api.github.com/users/ldlsegovia/followers"
            },
            "repository": {
                "issues_url": "https://api.github.com/repos/platanus/ksec/issues{/number}",
                "deployments_url": "https://api.github.com/repos/platanus/ksec/deployments",
                "svn_url": "https://github.com/platanus/ksec",
                "has_wiki": true,
                "forks_url": "https://api.github.com/repos/platanus/ksec/forks",
                "mirror_url": null,
                "stargazers_count": 1,
                "subscription_url": "https://api.github.com/repos/platanus/ksec/subscription",
                "notifications_url": "https://api.github.com/repos/platanus/ksec/notifications{?since,all,participating}",
                "collaborators_url": "https://api.github.com/repos/platanus/ksec/collaborators{/collaborator}",
                "updated_at": "2016-01-13T16:09:21Z",
                "private": true,
                "pulls_url": "https://api.github.com/repos/platanus/ksec/pulls{/number}",
                "owner": {
                    "email": "contact@platan.us",
                    "name": "platanus"
                },
                "full_name": "platanus/ksec",
                "issue_comment_url": "https://api.github.com/repos/platanus/ksec/issues/comments{/number}",
                "contents_url": "https://api.github.com/repos/platanus/ksec/contents/{+path}",
                "id": 5237899,
                "keys_url": "https://api.github.com/repos/platanus/ksec/keys{/key_id}",
                "issue_events_url": "https://api.github.com/repos/platanus/ksec/issues/events{/number}",
                "tags_url": "https://api.github.com/repos/platanus/ksec/tags",
                "downloads_url": "https://api.github.com/repos/platanus/ksec/downloads",
                "assignees_url": "https://api.github.com/repos/platanus/ksec/assignees{/user}",
                "statuses_url": "https://api.github.com/repos/platanus/ksec/statuses/{sha}",
                "has_pages": false,
                "git_refs_url": "https://api.github.com/repos/platanus/ksec/git/refs{/sha}",
                "open_issues_count": 3,
                "clone_url": "https://github.com/platanus/ksec.git",
                "watchers_count": 1,
                "git_tags_url": "https://api.github.com/repos/platanus/ksec/git/tags{/sha}",
                "labels_url": "https://api.github.com/repos/platanus/ksec/labels{/name}",
                "forks": 0,
                "size": 26842,
                "comments_url": "https://api.github.com/repos/platanus/ksec/comments{/number}",
                "fork": false,
                "milestones_url": "https://api.github.com/repos/platanus/ksec/milestones{/number}",
                "commits_url": "https://api.github.com/repos/platanus/ksec/commits{/sha}",
                "releases_url": "https://api.github.com/repos/platanus/ksec/releases{/id}",
                "description": "Ksec Access Control",
                "archive_url": "https://api.github.com/repos/platanus/ksec/{archive_format}{/ref}",
                "contributors_url": "https://api.github.com/repos/platanus/ksec/contributors",
                "events_url": "https://api.github.com/repos/platanus/ksec/events",
                "default_branch": "master",
                "html_url": "https://github.com/platanus/ksec",
                "watchers": 1,
                "compare_url": "https://api.github.com/repos/platanus/ksec/compare/{base}...{head}",
                "trees_url": "https://api.github.com/repos/platanus/ksec/git/trees{/sha}",
                "stargazers": 1,
                "git_url": "git://github.com/platanus/ksec.git",
                "forks_count": 0,
                "merges_url": "https://api.github.com/repos/platanus/ksec/merges",
                "has_issues": true,
                "ssh_url": "git@github.com:platanus/ksec.git",
                "blobs_url": "https://api.github.com/repos/platanus/ksec/git/blobs{/sha}",
                "master_branch": "master",
                "git_commits_url": "https://api.github.com/repos/platanus/ksec/git/commits{/sha}",
                "hooks_url": "https://api.github.com/repos/platanus/ksec/hooks",
                "has_downloads": true,
                "languages_url": "https://api.github.com/repos/platanus/ksec/languages",
                "name": "ksec",
                "language": "Ruby",
                "url": "https://github.com/platanus/ksec",
                "homepage": null,
                "created_at": 1343682296,
                "pushed_at": 1455579442,
                "teams_url": "https://api.github.com/repos/platanus/ksec/teams",
                "open_issues": 3,
                "organization": "platanus",
                "branches_url": "https://api.github.com/repos/platanus/ksec/branches{/branch}",
                "subscribers_url": "https://api.github.com/repos/platanus/ksec/subscribers",
                "stargazers_url": "https://api.github.com/repos/platanus/ksec/stargazers"
            },
            "created": false,
            "deleted": false,
            "commits": [
                {
                    "committer": {
                        "username": "ldlsegovia",
                        "name": "Leandro Segovia",
                        "email": "ldlsegovia@gmail.com"
                    },
                    "added": [
                        "rails/app/views/angular/job-editor/documents-worker.html.erb",
                        "rails/app/views/angular/job-editor/documents.html.erb",
                        "rails/app/views/angular/job-editor/push-dialog.html.erb"
                    ],
                    "author": {
                        "username": "ldlsegovia",
                        "name": "Leandro Segovia",
                        "email": "ldlsegovia@gmail.com"
                    },
                    "distinct": true,
                    "timestamp": "2016-02-15T20:37:12-03:00",
                    "modified": [
                        "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/module.js",
                        "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/parts/frame-ctrl.js",
                        "rails/config/locales/es-CL.yml"
                    ],
                    "url": "https://github.com/platanus/ksec/commit/e6fd3266d211e83d945ec926bc5bce5810578e91",
                    "message": "refactor(templates): move job editor templates to views/angular",
                    "removed": [
                        "web/templates/job-editor/documents-worker.html",
                        "web/templates/job-editor/documents.html",
                        "web/templates/job-editor/push-dialog.html"
                    ],
                    "id": "e6fd3266d211e83d945ec926bc5bce5810578e91"
                }
            ],
            "after": "e6fd3266d211e83d945ec926bc5bce5810578e91",
            "head_commit": {
                "committer": {
                    "username": "ldlsegovia",
                    "email": "ldlsegovia@gmail.com",
                    "name": "Leandro Segovia"
                },
                "added": [
                    "rails/app/views/angular/job-editor/documents-worker.html.erb",
                    "rails/app/views/angular/job-editor/documents.html.erb",
                    "rails/app/views/angular/job-editor/push-dialog.html.erb"
                ],
                "author": {
                    "username": "ldlsegovia",
                    "email": "ldlsegovia@gmail.com",
                    "name": "Leandro Segovia"
                },
                "distinct": true,
                "timestamp": "2016-02-15T20:37:12-03:00",
                "modified": [
                    "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/module.js",
                    "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/parts/frame-ctrl.js",
                    "rails/config/locales/es-CL.yml"
                ],
                "url": "https://github.com/platanus/ksec/commit/e6fd3266d211e83d945ec926bc5bce5810578e91",
                "message": "refactor(templates): move job editor templates to views/angular",
                "removed": [
                    "web/templates/job-editor/documents-worker.html",
                    "web/templates/job-editor/documents.html",
                    "web/templates/job-editor/push-dialog.html"
                ],
                "id": "e6fd3266d211e83d945ec926bc5bce5810578e91"
            },
            "organization": {
                "issues_url": "https://api.github.com/orgs/platanus/issues",
                "members_url": "https://api.github.com/orgs/platanus/members{/member}",
                "description": "We develop challenging software projects that require innovation and agility.",
                "public_members_url": "https://api.github.com/orgs/platanus/public_members{/member}",
                "url": "https://api.github.com/orgs/platanus",
                "events_url": "https://api.github.com/orgs/platanus/events",
                "avatar_url": "https://avatars.githubusercontent.com/u/1158740?v=3",
                "repos_url": "https://api.github.com/orgs/platanus/repos",
                "login": "platanus",
                "id": 1158740,
                "hooks_url": "https://api.github.com/orgs/platanus/hooks"
            },
            "ref": "refs/heads/angular-templates",
            "base_ref": null,
            "before": "1812d863cabdfab1b90ec1672e493dce36b0201f"
        },
        "provider": "github",
        "keen": {
            "timestamp": "2016-02-15T23:37:37.659Z",
            "created_at": "2016-02-15T23:37:37.659Z",
            "id": "56c2614146f9a74c4edece4d"
        },
        "controller": "api/v1/webhooks",
        "head_commit": {
            "committer": {
                "username": "ldlsegovia",
                "email": "ldlsegovia@gmail.com",
                "name": "Leandro Segovia"
            },
            "added": [
                "rails/app/views/angular/job-editor/documents-worker.html.erb",
                "rails/app/views/angular/job-editor/documents.html.erb",
                "rails/app/views/angular/job-editor/push-dialog.html.erb"
            ],
            "author": {
                "username": "ldlsegovia",
                "email": "ldlsegovia@gmail.com",
                "name": "Leandro Segovia"
            },
            "distinct": true,
            "timestamp": "2016-02-15T20:37:12-03:00",
            "modified": [
                "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/module.js",
                "rails/app/assets/javascripts/modules/ksec/fragments/job-editor/parts/frame-ctrl.js",
                "rails/config/locales/es-CL.yml"
            ],
            "url": "https://github.com/platanus/ksec/commit/e6fd3266d211e83d945ec926bc5bce5810578e91",
            "message": "refactor(templates): move job editor templates to views/angular",
            "removed": [
                "web/templates/job-editor/documents-worker.html",
                "web/templates/job-editor/documents.html",
                "web/templates/job-editor/push-dialog.html"
            ],
            "id": "e6fd3266d211e83d945ec926bc5bce5810578e91"
        },
        "action": "register",
        "organization": {
            "issues_url": "https://api.github.com/orgs/platanus/issues",
            "members_url": "https://api.github.com/orgs/platanus/members{/member}",
            "description": "We develop challenging software projects that require innovation and agility.",
            "public_members_url": "https://api.github.com/orgs/platanus/public_members{/member}",
            "url": "https://api.github.com/orgs/platanus",
            "events_url": "https://api.github.com/orgs/platanus/events",
            "avatar_url": "https://avatars.githubusercontent.com/u/1158740?v=3",
            "repos_url": "https://api.github.com/orgs/platanus/repos",
            "login": "platanus",
            "id": 1158740,
            "hooks_url": "https://api.github.com/orgs/platanus/hooks"
        },
        "ref": "refs/heads/angular-templates",
        "base_ref": null,
        "before": "1812d863cabdfab1b90ec1672e493dce36b0201f"
    }
    JSON
    JSON.parse(payload)
  }
  let(:provider) { 'github' }
  let(:params) { ActionController::Parameters.new(payload) }
  let(:headers) { {'X-Github-Event': 'push'} }
  let(:transformer) { PayloadTransformer.new(provider, params, headers) }

  describe "#transform" do
    it "return the content of webhook key" do
      expect(transformer.transform[:webhook]).to eq(nil)
    end

    it "adds the event type" do
      expect(transformer.transform[:event_type]).to eq(headers[:'X-Github-Event'])
    end

    it "add commit count when event is push" do
      expect(transformer.transform[:commit_count]).to eq(1)
    end
  end
end
