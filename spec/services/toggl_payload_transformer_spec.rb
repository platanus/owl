describe PayloadTransformer do
  let(:payload) {
    payload = <<-JSON
    {
        "wid": "236416",
        "uid": "549348",
        "pid": "2742320",
        "duration_minutes": "120",
        "at": "2016-02-16T01:08:21+00:00",
        "duration": "7202",
        "guid": "cef248ef-69b1-4365-a35c-a7281673e947",
        "id": "336652024",
        "duronly": "False",
        "start": "2016-02-15T23:08:19+00:00",
        "provider": "toggl",
        "username": "leandro",
        "description": "Limpieza - Mover templates a views/angular (reestructurar locales también)",
        "format": "json",
        "webhook": {
            "duronly": "False",
            "wid": "236416",
            "description": "Limpieza - Mover templates a views/angular (reestructurar locales también)",
            "stop": "2016-02-16T01:08:21+00:00",
            "pid": "2742320",
            "project": {
                "auto_estimates": "False",
                "name": "KSEC",
                "wid": "236416",
                "cid": "922783",
                "color": "8",
                "actual_hours": "3319",
                "id": "2742320",
                "client": {
                    "wid": "236416",
                    "at": "2013-04-16T16:20:55+00:00",
                    "name": "Interkambio",
                    "id": "922783"
                },
                "at": "2014-07-17T20:35:14+00:00",
                "template": "False",
                "billable": "True",
                "active": "True",
                "created_at": "2013-04-16T16:19:46+00:00",
                "is_private": "True"
            },
            "start": "2016-02-15T23:08:19+00:00",
            "duration_minutes": "120",
            "at": "2016-02-16T01:08:21+00:00",
            "workspace": {
                "profile": "13",
                "subscription": {
                    "vat_invalid_accepted_by": "",
                    "description": "Pro",
                    "vat_valid": "False",
                    "created_at": "0001-01-01T00:00:00Z",
                    "updated_at": "",
                    "vat_applicable": "False",
                    "vat_validated_at": "",
                    "vat_invalid_accepted_at": "",
                    "deleted_at": "",
                    "workspace_id": "0"
                },
                "rounding_minutes": "1",
                "premium": "True",
                "name": "Platanus' workspace",
                "campaign": "False",
                "business_tester": "False",
                "admin": "False",
                "ical_url": "/ical/workspace_user/25a9a7b0716839808046e98dc4456f7a",
                "csv_upload": {
                    "log_id": "231520",
                    "at": "2013-04-16 16:31:17.551158+00"
                },
                "rounding": "1",
                "ical_enabled": "True",
                "only_admins_see_team_dashboard": "False",
                "at": "2015-03-31T11:38:19+00:00",
                "projects_billable_by_default": "True",
                "only_admins_see_billable_rates": "True",
                "logo_url": "https://assets.toggl.com/logos/236416/7661dc78314cdbc827b1f24981da5661.png",
                "only_admins_may_create_projects": "False",
                "id": "236416",
                "default_currency": "UF"
            },
            "billable": "True",
            "duration": "7202",
            "duration_hours": "2.0",
            "guid": "cef248ef-69b1-4365-a35c-a7281673e947",
            "id": "336652024",
            "duration_readable": "02:00:02",
            "uid": "549348"
        },
        "billable": "True",
        "stop": "2016-02-16T01:08:21+00:00",
        "controller": "api/v1/webhooks",
        "project": {
            "auto_estimates": "False",
            "name": "KSEC",
            "wid": "236416",
            "cid": "922783",
            "color": "8",
            "actual_hours": "3319",
            "id": "2742320",
            "client": {
                "wid": "236416",
                "at": "2013-04-16T16:20:55+00:00",
                "name": "Interkambio",
                "id": "922783"
            },
            "at": "2014-07-17T20:35:14+00:00",
            "template": "False",
            "billable": "True",
            "active": "True",
            "created_at": "2013-04-16T16:19:46+00:00",
            "is_private": "True"
        },
        "keen": {
            "timestamp": "2016-02-16T01:10:22.047Z",
            "created_at": "2016-02-16T01:10:22.047Z",
            "id": "56c276fe6f31a2303b55e35e"
        },
        "workspace": {
            "profile": "13",
            "subscription": {
                "vat_invalid_accepted_by": "",
                "description": "Pro",
                "vat_valid": "False",
                "created_at": "0001-01-01T00:00:00Z",
                "updated_at": "",
                "vat_applicable": "False",
                "vat_validated_at": "",
                "vat_invalid_accepted_at": "",
                "deleted_at": "",
                "workspace_id": "0"
            },
            "rounding_minutes": "1",
            "premium": "True",
            "name": "Platanus' workspace",
            "campaign": "False",
            "business_tester": "False",
            "admin": "False",
            "ical_url": "/ical/workspace_user/25a9a7b0716839808046e98dc4456f7a",
            "csv_upload": {
                "log_id": "231520",
                "at": "2013-04-16 16:31:17.551158+00"
            },
            "rounding": "1",
            "ical_enabled": "True",
            "only_admins_see_team_dashboard": "False",
            "at": "2015-03-31T11:38:19+00:00",
            "projects_billable_by_default": "True",
            "only_admins_see_billable_rates": "True",
            "logo_url": "https://assets.toggl.com/logos/236416/7661dc78314cdbc827b1f24981da5661.png",
            "only_admins_may_create_projects": "False",
            "id": "236416",
            "default_currency": "UF"
        },
        "action": "register",
        "duration_hours": "2.0",
        "duration_readable": "02:00:02"
    }
    JSON
    JSON.parse(payload)
  }
  let(:provider) { 'toggl' }
  let(:params) { ActionController::Parameters.new(payload) }
  let(:transformer) { PayloadTransformer.new(provider, params) }

  describe "#transform" do
    it "return the content of webhook key" do
      expect(transformer.transform[:webhook]).to eq(nil)
    end

    it "adds the username" do
      expect(transformer.transform[:username]).to eq("leandro")
    end

    it "transform duration to integer" do
      expect(transformer.transform[:duration]).to eq(7202)
    end

    it "transform duration_hours to float" do
      expect(transformer.transform[:duration_hours]).to eq(2.0)
    end

    it "transform duration_minutos to integer" do
      expect(transformer.transform[:duration_minutes]).to eq(120)
    end
  end
end
