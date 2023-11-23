import SwiftUI

struct ImageInfo: Identifiable {
    var id = UUID()
    
    let image: String
    let name: String
}

struct InfoButtons: View {
    let imageList = [
        ImageInfo(image: AssetImage.iconCovid, name: LocalizedStrings.infoCovid),
        ImageInfo(image: AssetImage.iconProfile, name: LocalizedStrings.infoDoctor),
        ImageInfo(image: AssetImage.iconLink, name: LocalizedStrings.infoMed),
        ImageInfo(image: AssetImage.iconHos, name: LocalizedStrings.infoHos)
    ]

    var body: some View {
        HStack(alignment: .top, spacing: SpacingSize.sm) {
            ForEach(imageList) { item in
                Button(action: {
                    print("Button \(item.name) pressed")
                }) {
                    VStack(alignment: .center, spacing: SpacingSize.small) {
                        Image(item.image)
                            .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
                            .padding(SpacingSize.huge)
                            .background(AssetColor.backGroundColor)
                            .cornerRadius(Radius.large)

                        Text(item.name)
                        .font(Font.custom(FontNames.poppins, size: FontSizes.sm))
                        .foregroundColor(AssetColor.kindGrayColor)
                    }
                    .padding(SpacingSize.without)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding()
    }
}


struct InfoButtons_Previews: PreviewProvider {
    static var previews: some View {
        InfoButtons()
    }
}
