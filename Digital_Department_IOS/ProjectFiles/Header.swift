import SwiftUI

struct Header: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: SpacingSize.verysmall) {
                Text(LocalizedStrings.hello)
                  .font(Font.custom(FontNames.poppins, size: FontSizes.medium))
                  .foregroundColor(AssetColor.helloTextColor)

                Text(LocalizedStrings.hiusername)
                  .font(Font.custom(FontNames.poppins, size: FontSizes.large)
                          .weight(.bold)
                  )
                  .lineSpacing(SpacingSize.huge)
                  .foregroundColor(AssetColor.nameTextColor)
            }
            .padding(SpacingSize.without)

            Spacer()
            AssetImage.iconFrame
                .frame(width: Sizes.frameSize, height: Sizes.iconSize)
        }
        .padding(SpacingSize.without)
        .frame(width: Sizes.headerSize, alignment: .center)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
