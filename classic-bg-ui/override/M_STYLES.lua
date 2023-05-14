fontcolors['D'] = 'FFA9D4FF'
fontcolors['S'] = 'FF0066FF'
fontcolors['H'] = 'FF63B6EE'
fontcolors['F'] = 'FFFFFFFF'
fontcolors['L'] = 'FF020D3F'

function updateTable(first, second)
	for k, v in pairs(second) do
		first[k] = v
	end
end

updateTable(styles, {
	big_button =
	{
		color = 'B',
		font = 'STONEBIG' ,
		point = 18,
		valign = 'center',
		halign = 'center',
		upper = 1,
		pad = {8,8,8,8},
		useFontZoom = 0,
	},
	bold_parchment =
	{
		color = '5',
		font = 'POSTBOLD',
		point = 16,
		valign = 'top',
		halign = 'left',
    useFontZoom = 0,
	},
	journal_entry =
	{
		color = 'B',
		font = 'STONESML',
		point = 12,
		valign = 'center',
		halign = 'left',
    useFontZoom = 0,
	},
})

styles['gamelog']['font'] = 'POSTANTI'
styles['gamelog']['point'] = 12

styles['normal']['font'] = 'POSTANTI'
styles['normal']['point'] = 12

styles['normal_parchment']['color'] = 'L'

styles['parchment']['font'] = 'POSTANTI'
styles['parchment']['point'] = 12
styles['parchment']['color'] = 'L'

styles['button']['font'] = 'STONEBIG'
styles['button']['point'] = 18
styles['button']['pad'] = {4,6,2,4}

styles['edit']['font'] = 'MODESTOM'
styles['edit']['point'] = 12
styles['edit_parchment']['font'] = 'POSTANTI'
styles['edit_parchment']['point'] = 12

styles['label']['font'] = 'STONEBIG'
styles['label']['point'] = 16
styles['label']['upper'] = 1

styles['label_parchment']['font'] = 'POSTANTI'
styles['label_parchment']['point'] = 12

styles['edit']['font'] = 'POSTANTI'
styles['edit']['point'] = 14

styles['list']['font'] = 'POSTANTI'
styles['list']['point'] = 14

styles['gold']['font'] = 'STONESML'
styles['gold']['point'] = 12
styles['gold']['color'] = '$'

styles['title']['font'] = 'ELMINSTE'
styles['title']['point'] = 35
styles['title']['color'] = 'H'