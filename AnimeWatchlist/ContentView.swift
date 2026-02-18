//
import SwiftUI

struct Anime: Identifiable {
    let id = UUID()
    var title: String
    var watched: Bool
}

struct ContentView: View {
    @State private var animeList: [Anime] = []
    @State private var newAnimeTitle = ""

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Enter anime title", text: $newAnimeTitle)
                        .textFieldStyle(.roundedBorder)

                    Button("Add") {
                        if !newAnimeTitle.isEmpty {
                            animeList.append(Anime(title: newAnimeTitle, watched: false))
                            newAnimeTitle = ""
                        }
                    }
                }
                .padding()

                List {
                    ForEach(animeList.indices, id: \.self) { index in
                        HStack {
                            Text(animeList[index].title)
                            Spacer()
                            Button(action: {
                                animeList[index].watched.toggle()
                            }) {
                                Image(systemName: animeList[index].watched ? "checkmark.circle.fill" : "circle")
                            }
                        }
                    }
                    .onDelete { indexSet in
                        animeList.remove(atOffsets: indexSet)
                    }
                }
            }
            .navigationTitle("Anime Watchlist")
        }
    }
}
