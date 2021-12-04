import SwiftUI

struct ExternalWeblinkView: View {
    let hero: Hero
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Info")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(hero.alias, destination: (URL(string: hero.link) ?? URL(string: "https://wikipedia.org\(hero.alias)"))!)
                }.foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let heroes: [Hero] = Bundle.main.decode("heroes.json")
    static var previews: some View {
        ExternalWeblinkView(hero: heroes[0])
    }
}
