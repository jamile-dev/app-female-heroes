import SwiftUI

struct HeroItemView: View {
    let hero: Hero
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(hero.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(hero.alias)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(hero.headline)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct HeroItemView_Previews: PreviewProvider {
    static let heroes: [Hero] = Bundle.main.decode("heroes.json")
    
    static var previews: some View {
        HeroItemView(hero: heroes[0])
    }
}
