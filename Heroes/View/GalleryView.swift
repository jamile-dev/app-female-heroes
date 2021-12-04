import SwiftUI

struct GalleryView: View {
    let hero: Hero
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(hero.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static let heroes: [Hero] = Bundle.main.decode("heroes.json")
    
    static var previews: some View {
        GalleryView(hero: heroes[0])
    }
}
