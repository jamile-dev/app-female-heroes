import SwiftUI

struct ContentView: View {
    let heroes: [Hero] = Bundle.main.decode("heroes.json")
    
    var body: some View {
        NavigationView {
            Group {
                List {
                    ForEach(heroes) { hero in
                        NavigationLink(destination: HeroDetailView(hero: hero)) {
                            HeroItemView(hero: hero)
                        }.listRowInsets(EdgeInsets(top: 20, leading: 0, bottom: 5, trailing: 0))
                    }.listRowBackground(Color.black)
                }
            }.navigationBarTitle("Heroes", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
