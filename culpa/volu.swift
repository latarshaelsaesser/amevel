struct CustomContainer<Content: View>: View {
    let title: String
    let content: () -> Content
    
    init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
            Divider()
            content()
            Divider()
            Text("End of content")
                .font(.caption)
        }
        .padding()
    }
}
