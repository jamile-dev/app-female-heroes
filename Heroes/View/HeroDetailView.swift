import SwiftUI

struct HeroDetailView: View {
    let hero: Hero
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(hero.image)
                    .resizable()
                    .scaledToFit()
                
                Text(hero.alias.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(hero.headline)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Pictures")
                    
                    GalleryView(hero: hero)
                }
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(hero.name)")
                    Text(hero.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                }.padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(hero: hero)
                    
                }.padding(.horizontal)
                
            }.navigationBarTitle("Learn about \(hero.name)", displayMode: .inline)
        }
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static let heroes: [Hero] = Bundle.main.decode("heroes.json")
    static var previews: some View {
        HeroDetailView(hero: heroes[0])
    }
}
