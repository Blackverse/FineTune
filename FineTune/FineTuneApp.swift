// FineTune/FineTuneApp.swift
import SwiftUI
import UserNotifications

@main
struct FineTuneApp: App {
    @State private var audioEngine: AudioEngine
    @State private var systemVolumeMonitor: SystemVolumeMonitor

    var body: some Scene {
        MenuBarExtra("FineTune", systemImage: "slider.horizontal.3") {
            MenuBarPopupView(audioEngine: audioEngine, systemVolumeMonitor: systemVolumeMonitor)
        }
        .menuBarExtraStyle(.window)
    }

    init() {
        let settings = SettingsManager()
        let engine = AudioEngine(settingsManager: settings)
        _audioEngine = State(initialValue: engine)

        let volumeMonitor = SystemVolumeMonitor(deviceMonitor: engine.deviceMonitor)
        _systemVolumeMonitor = State(initialValue: volumeMonitor)

        // Start system volume monitor
        Task { @MainActor in
            volumeMonitor.start()
        }

        // Request notification authorization (for device disconnect alerts)
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { granted, error in
            if let error {
                print("Notification authorization error: \(error.localizedDescription)")
            }
            // If not granted, notifications will silently not appear - acceptable behavior
        }

        // Flush settings on app termination to prevent data loss from debounced saves
        NotificationCenter.default.addObserver(
            forName: NSApplication.willTerminateNotification,
            object: nil,
            queue: .main
        ) { [settings] _ in
            settings.flushSync()
        }
    }
}
