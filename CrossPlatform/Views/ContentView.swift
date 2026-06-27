
//  SwiftUIView.swift
//  CrossPlatform

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Metrics.current.sectionSpacing) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Design System")
                        .appFont(.largeTitle)
                        .foregroundStyle(Theme.textPrimary)
                    Text("Rendu sur \(Platform.current.label)")
                        .appFont(.caption)
                        .foregroundStyle(Theme.textSecondary)
                }
                
                VStack(spacing: Metrics.current.cardSpacing) {
                    ForEach(demoFeatures) { feature in
                        FeatureRow(feature: feature)
                    }
                }
            }.screenPadding()
        }.screenBackground()
    }
}

#Preview {
    ContentView()
}

private struct Feature: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    let subtitle: String
}

private let demoFeatures: [Feature] = [
    .init(icon: "safari", title: "Safari", subtitle: "Safari"),
    .init(icon: "circle.circle", title: "Circle", subtitle: "Cercle"),
    .init(icon: "clock", title: "Horaires", subtitle: "Heures"),
]

private struct FeatureRow: View {
    
    let feature: Feature
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: feature.icon)
                .font(.system(size: Metrics.current.iconSize))
                .foregroundStyle(Theme.highlight)
                .frame(width: Metrics.current.iconSize + 8)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(feature.title)
                    .appFont(.headline)
                    .foregroundStyle(Theme.textPrimary)
                Text(feature.subtitle)
                    .appFont(.caption)
                    .foregroundStyle(Theme.textSecondary)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundStyle(Theme.textSecondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .cardStyle()
    }
}
