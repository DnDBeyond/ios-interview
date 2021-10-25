# Interview

## Project setup
- Install [Cocoapods](https://guides.cocoapods.org/using/getting-started.html)
- Use `pod install` to install needed libraries
- Open Interview.xcworkspace


## Requirements
- Character screen should contain the following information:
    - character name 
    - avatar
    - list of inventory items
    - each item should have a name colored based on rarity of the item
        - Common - #F5F8FA 
        - Uncommon - #5CBE3E
        - Rare - #5991DC
        - Very Rare - #B55DFF
        - Legendary - #F2A546
        - Artifact - #B78B76
    - item type
    - information whether the item is magical or not below the name
- The size of the views should adjust to iPads as well
- The character data should be fetched from the following url dynamically (not included locally):
    - [JSON](https://gist.githubusercontent.com/nahive/18ccaa1112ca4c1556fe36cf73dd229f/raw/783ee2947ee8ad23a3eab06856b92c2480b6e449/recruitmentJSON.json)
- When implementing the UI, please consult the attached design mockup (including attached fonts and icons):
    - [Design](https://www.figma.com/file/a7OsIaT4mwCRrq9i1t5nIP/Recruitment-Task?node-id=0%3A1)
