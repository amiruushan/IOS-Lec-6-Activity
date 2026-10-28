import SwiftUI

struct DrinkRowView: View {
    let name: String
    let thumbnail: String
    let id: String

    var body: some View {

        HStack(alignment: .center, spacing: 12) {

            // Left: Book image
            AsyncImage(url: URL(string: thumbnail)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 60, height: 90)

            // Middle: Book information
            VStack(alignment: .leading, spacing: 6) {

                Text(name)
                    .font(.headline)

                Text(id)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            // Right: Favourite button
            Button {
                print("todo")
            } label: {
                Image(systemName: "heart")
                    .font(.title2)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
    }
}

#Preview {
    DringRawView(
        name: "Ficciones",
        thumbnail: "https://covers.openlibrary.org/b/id/10832290-M.jpg",
        id: "OL110971W"
    )
}
