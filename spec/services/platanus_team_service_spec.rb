describe PlatanusTeamService do

PAYLOAD=OpenStruct.new({body:'[{"id":1,"first_name":"Jaime","email":"jaime@platan.us","twitter":"bunzli","description_en":"Jaime Bünzli is an Engineer from Pontificia Universidad Católica de Chile, with an Information Technology diploma. He\'s one of Platanus founders and works leading software projects, both those related to our internal development and investigation and solutions developed for third parties. He\'s been on charge of QueHambre\'s development during 2012 and 2013.","description_es":"Jaime Bünzli es Ingeniero Civil Industrial de la Pontificia Universidad Católica de Chile, con diploma en Tecnologías de la Información. Es uno de los fundadores de Platanus y trabaja liderando proyectos de software, tanto los que surgen de la investigación interna como aquellos que pretenden solucionar los problemas de nuestros clientes. Se ha hecho cargo liderar el desarrollo de QueHambre durante 2012 y 2013.","created_at":"2013-01-16T13:47:42.000Z","updated_at":"2015-08-12T15:39:56.000Z","picture_file_name":"Jaime.jpg","picture_content_type":"image/jpeg","picture_file_size":201797,"picture_updated_at":"2015-08-12T15:39:56.000Z","title_es":"Co-fundador | Ingeniero de Software","title_en":"Co-founder | Software Engineer","last_name":"Bunzli","venue_id":1,"slug":"jaime-bunzli","linkedin":"linkedin.com/pub/jaime-b%C3%BCnzli/20/339/81a","github":"bunzli","calendar":"jaime@platan.us","develops":true,"current":true,"first_name_and_last_name":"Jaime Bunzli"},{"id":2,"first_name":"Ignacio","email":"ignacio@platan.us","twitter":"","description_en":"","description_es":"","created_at":"2013-01-16T13:49:47.000Z","updated_at":"2015-08-12T15:39:19.000Z","picture_file_name":"Ignacio.jpg","picture_content_type":"image/jpeg","picture_file_size":126340,"picture_updated_at":"2015-08-12T15:39:18.000Z","title_es":"Co-fundador | Ingeniero de Software","title_en":"Co-founder | Software Engineer","last_name":"Baixas","venue_id":1,"slug":"ignacio-baixas","linkedin":"cl.linkedin.com/pub/ignacio-baixas/27/567/7ba","github":"iobaixas","calendar":"ignacio@platan.us","develops":true,"current":true,"first_name_and_last_name":"Ignacio Baixas"}]'})
  let(:service) {described_class.new}
  it "should return an object with members" do
    stub_const("Faraday", Faraday.new)
    allow(Faraday).to receive(:get).and_return(PAYLOAD)
    expect(service.members.count).to be 2
  end
  it "should return members with a toggl_key" do
    stub_const("Faraday", Faraday.new)
    allow(Faraday).to receive(:get).and_return(PAYLOAD)
    expect(service.members_with_toggl_keys.last[:toggl_key]).to be_a(String)
  end
end
