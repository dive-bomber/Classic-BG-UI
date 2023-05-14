TT_TitleData = {}

TT_TitleCharWidth =
{
    14,14, 7,14,14,14,14,14,14,14,14,14,14,14,14,14,
    14,14,14,14,14,14,14,14,14,14,14,14,14,14,14, 10,
     7,18,21,16,17,23, 10, 9, 9,14,14, 8,14, 7,14,16,
     10,13,14,13,13,16,14,14,16, 7, 8, 12,14, 12,14,25,
    22,18,13,20,14,17,22,21, 7,16,20,16,30,27,23,18,
    22,18,13,20,23,21,29,22,21,17, 10,14, 10,16,30, 8,
    20,17,13,18, 12,16,20,18, 7,14,17,14,27,21,20,18,
    20,17,14,18,20,18,25,20,18,16,13, 7,13,17,14,14,
    14, 8,21,16,22,22,22,13,30,17,13,30,14,14,14,14,
     8, 8,16,16, 7,25,30,14,30,13,13,25,14,14,21,14,
     7,17,25,18,22, 5,20,14,23,14,26,20,14,23,14, 8,
    14, 8, 9, 10,17,20, 7, 8, 8, 12,26,26,25,26,14,22,
    22,22,22,22,22,30, 12,14,14,14,14, 8, 8, 10,14,23,
    23,23,23,23,23,23,18,23,23,23,23,23,21,14,16,18,
    18,18,18,18,18,25, 9, 12, 12, 12, 12, 7, 7, 8, 12,18,
    20,18,18,18,18,18,14,18,20,20,20,20,16, 10,16
}

function TT_BuildTitleData(title, frameWidth, localized)
    local titleDataEntry = TT_TitleData[title]

    if titleDataEntry
    then
        TT_DestroyTitleChars(title, titleDataEntry.template)
    end

    titleDataEntry = {}
    TT_TitleData[title] = titleDataEntry

    local titleString = localized and uiStrings[title] or title
    local titleWidth = 0

    for i = 1, #titleString
    do
        local s = string.byte(titleString, i)
        local w = TT_TitleCharWidth[s] 

        titleDataEntry[i] = {
            seq = s - 1,
            x = titleWidth,
            width = w
        }

        titleWidth = titleWidth + w
    end

    local xOffset = frameWidth / 2 - titleWidth / 2

    for i, data in ipairs(titleDataEntry)
    do
        data.x = data.x + xOffset
    end
end

function TT_CreateTitleChars(titleText, titleFrame, titleHeight, templateName)
    local oldAnimId = currentAnimationID
    currentAnimationID = 1

    for i,data in ipairs(TT_TitleData[titleText])
    do
        Infinity_InstanceAnimation(templateName, nil, data.x, 0, data.width, titleHeight, titleFrame, 1)
        currentAnimationID = currentAnimationID + 1
    end

    TT_TitleData[titleText].template = templateName

    currentAnimationID = oldAnimId
end

function TT_DestroyTitleChars(titleText, templateName)
    for i,data in ipairs(TT_TitleData[titleText])
    do
        Infinity_DestroyAnimation(templateName, i)
    end

    TT_TitleData[titleText] = nil
end