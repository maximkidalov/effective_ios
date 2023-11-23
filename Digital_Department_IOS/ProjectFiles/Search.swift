
import SwiftUI

struct Search: View {
    
    @State private var search = ""

    var body: some View {
        HStack(alignment: .center, spacing: SpacingSize.medium) {
            AssetImage.iconSearch
            .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)

            TextField(LocalizedStrings.searchPlaceHolder,
            text: $search)
              .font(Font.custom(FontNames.poppins, size: FontSizes.sm))
              .foregroundColor(AssetColor.kindGrayColor)
        }
        .padding(SpacingSize.large)
        .frame(width: Sizes.headerSize, alignment: .leading)
        .background(AssetColor.backGroundColor)
        .cornerRadius(SpacingSize.medium)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
