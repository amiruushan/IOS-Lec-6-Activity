import SwiftUI
import SwiftData

@main
struct MovieGenreFilterApp: App {
   
    @State private var preferences = UserPreferences()
    @State private var databaseManager = DatabaseManager()
    
    let container: ModelContainer
    
    init() {
        do {
            container = try ModelContainer(for: Movie.self)
        } catch {
            fatalError("Failed to create ModelContainer: \(error)")
        }
    }
    
    
    var body: some Scene {
        WindowGroup {
            MovieListView()
                .environment(preferences)
                .environment(databaseManager)
                .preferredColorScheme(preferences.prefferedColorScheme)
                .task {
                    let seeder = DatabaseSeeder(modelContainer: container)
                    
                    do {
                        try await seeder.seedIfEmpty()
                    } catch {
                        databaseManager.record(error)
                    }
                }
        }
        .modelContainer(container)
    }
}
