import SwiftUI

struct NavigationButtons: View {
  var body: some View {
    HStack(spacing: SpacingSize.medium) {
        Button(action: {
            print("pressed")
        }){
            HStack(spacing: SpacingSize.small) {
                ZStack() {
                    AssetImage.navigationHome
                        .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
                }
                
                Text(LocalizedStrings.navigationHome)
                    .font(Font.custom(FontNames.nunito, size: FontSizes.small).weight(.bold))
                    .foregroundColor(AssetColor.navBlueColor)
            }
            .padding(SpacingSize.medium)
            .background(AssetColor.navBlueColor.opacity(Sizes.customFloat3))
            .cornerRadius(Radius.medium)
        }
        Button(action: {
            print("pressed")
        }){
            HStack(spacing: SpacingSize.small) {
                HStack(spacing: SpacingSize.without) {
                    AssetImage.navigationCal
                        .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
                }
                .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
            }
            .padding(SpacingSize.medium)
            .frame(maxWidth: Sizes.idk, minHeight: Sizes.bigAvatarSize, maxHeight: Sizes.bigAvatarSize)
        }
        Button(action: {
            print("pressed")
        }){
            HStack(spacing: SpacingSize.small) {
                HStack(spacing: SpacingSize.without) {
                    AssetImage.navigationMes
                        .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
                }
                .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
            }
            .padding(SpacingSize.medium)
            .frame(maxWidth: Sizes.idk, minHeight: Sizes.bigAvatarSize, maxHeight: Sizes.bigAvatarSize)
        }
        Button(action: {
            print("pressed")
        }){
            HStack(spacing: SpacingSize.small) {
                HStack(spacing: SpacingSize.without) {
                    AssetImage.navigationProf
                        .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
                }
                .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
            }
        }
      .padding(SpacingSize.medium)
      .frame(maxWidth: Sizes.idk, minHeight: Sizes.bigAvatarSize, maxHeight: Sizes.bigAvatarSize)
    }
    .padding(EdgeInsets(top: Sizes.iconSize, leading: Sizes.avatarSize, bottom: Sizes.iconSize, trailing: Sizes.avatarSize))
    .frame(width: Sizes.navSize, height: Sizes.customSize)
    .background(.white);
  }
}

struct NavigationButtons_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtons()
    }
}
