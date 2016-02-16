describe PayloadTransformer do
  let(:payload) {
    payload = <<-JSON
    {
        "format": "json",
        "webhook": {
            "action": {
                "data": {
                    "old": {
                        "desc": "test"
                    },
                    "list": {
                        "id": "557982f4dddc1c972ddb136a",
                        "name": "In Process"
                    },
                    "board": {
                        "shortLink": "FgjkpReL",
                        "id": "557982d2db6ff8ab0f497d39",
                        "name": "KSEC"
                    },
                    "card": {
                        "idShort": 261,
                        "shortLink": "G8pHMeOD",
                        "id": "568bc3f7205058388f184f49",
                        "name": "Limpieza",
                        "desc": "test"
                    }
                },
                "idMemberCreator": "54a1c39e6a95407dac0e507f",
                "memberCreator": {
                    "username": "ldlsegovia",
                    "fullName": "Leandro Segovia",
                    "initials": "LS",
                    "avatarHash": "12b704a9706ccad560ada16756fe957c",
                    "id": "54a1c39e6a95407dac0e507f"
                },
                "date": "2016-02-16T01:13:24.772Z",
                "type": "updateCard",
                "id": "56c277b46aa39871266a4cb5"
            },
            "model": {
                "avatarSource": null,
                "gravatarHash": null,
                "memberType": "normal",
                "premiumFeatures": [
                    "additionalStickers",
                    "customStickers",
                    "additionalBoardBackgrounds",
                    "customBoardBackgrounds",
                    "largeAttachments",
                    "customEmoji",
                    "savedSearches"
                ],
                "oneTimeMessagesDismissed": null,
                "id": "54a1c39e6a95407dac0e507f",
                "confirmed": true,
                "loginTypes": null,
                "avatarHash": "12b704a9706ccad560ada16756fe957c",
                "trophies": null,
                "products": [
                    10
                ],
                "prefs": null,
                "email": null,
                "status": "disconnected",
                "bio": "",
                "idBoardsPinned": null,
                "idOrganizations": [
                    "5492b71e14a5bc2b8fb761fb"
                ],
                "idBoards": [
                    "55facd3153b60bf1eb4b4b22",
                    "552fb299c338f55f0b6ebfc7",
                    "55196bccc27e5c54295f9c9f",
                    "54a3fd4f3ba56e85ff0e545d",
                    "54a6a4ee8d979f5cfdfddabe",
                    "557982d2db6ff8ab0f497d39",
                    "56786da6311c24d29e5896a0",
                    "55087c234c6713e6eaffa7be",
                    "54bd22782459b803bad5f6ee",
                    "54a1bb2fedb25f0551b42171",
                    "55ae674bb2b2e0d16c052ac1",
                    "5492bc7813a8a4fa4e2f7b36",
                    "54b952295707904228c56031",
                    "555f26a8f613f3c5851cd6b9",
                    "54a45ac7af46d1d98d1d7165"
                ],
                "fullName": "Leandro Segovia",
                "url": "https://trello.com/ldlsegovia",
                "username": "ldlsegovia",
                "idPremOrgsAdmin": null,
                "uploadedAvatarHash": null,
                "initials": "LS"
            }
        },
        "keen": {
            "timestamp": "2016-02-16T01:13:25.100Z",
            "created_at": "2016-02-16T01:13:25.100Z",
            "id": "56c277b559949a4b2094e4dd"
        },
        "controller": "api/v1/webhooks",
        "provider": "trello",
        "action": "register",
        "model": {
            "avatarSource": null,
            "gravatarHash": null,
            "memberType": "normal",
            "premiumFeatures": [
                "additionalStickers",
                "customStickers",
                "additionalBoardBackgrounds",
                "customBoardBackgrounds",
                "largeAttachments",
                "customEmoji",
                "savedSearches"
            ],
            "oneTimeMessagesDismissed": null,
            "id": "54a1c39e6a95407dac0e507f",
            "confirmed": true,
            "loginTypes": null,
            "avatarHash": "12b704a9706ccad560ada16756fe957c",
            "trophies": null,
            "products": [
                10
            ],
            "prefs": null,
            "email": null,
            "status": "disconnected",
            "bio": "",
            "idBoardsPinned": null,
            "idOrganizations": [
                "5492b71e14a5bc2b8fb761fb"
            ],
            "idBoards": [
                "55facd3153b60bf1eb4b4b22",
                "552fb299c338f55f0b6ebfc7",
                "55196bccc27e5c54295f9c9f",
                "54a3fd4f3ba56e85ff0e545d",
                "54a6a4ee8d979f5cfdfddabe",
                "557982d2db6ff8ab0f497d39",
                "56786da6311c24d29e5896a0",
                "55087c234c6713e6eaffa7be",
                "54bd22782459b803bad5f6ee",
                "54a1bb2fedb25f0551b42171",
                "55ae674bb2b2e0d16c052ac1",
                "5492bc7813a8a4fa4e2f7b36",
                "54b952295707904228c56031",
                "555f26a8f613f3c5851cd6b9",
                "54a45ac7af46d1d98d1d7165"
            ],
            "fullName": "Leandro Segovia",
            "url": "https://trello.com/ldlsegovia",
            "username": "ldlsegovia",
            "idPremOrgsAdmin": null,
            "uploadedAvatarHash": null,
            "initials": "LS"
        }
    }
    JSON
    JSON.parse(payload)
  }
  let(:provider) { 'trello' }
  let(:params) { ActionController::Parameters.new(payload) }
  let(:transformer) { PayloadTransformer.new(provider, params) }

  describe "#transform" do
    it "return the content of webhook key" do
      expect(transformer.transform[:webhook]).to eq(nil)
    end
  end
end
