require 'spec_helper'
require 'caesar_cipher.rb'

describe 'caesar_cipher' do
	it 'implements the Caesar cipher on small letters' do
		expect(caesar_cipher('book',1)).to eq('annj')
	end

	it 'correctly changes all letters' do
		expect(caesar_cipher('dog',1)).not_to eq('cmd')
	end

	it 'correctly changes capital letters' do
		expect(caesar_cipher('BILL',1)).to eq('AHKK')
	end

	it 'correctly traverses when you reach the end of the alphabet' do
		expect(caesar_cipher('batman',5)).to eq('wvohvi')
	end

	it 'correclty traverses beyond the end of the capital alphabet' do
		expect(caesar_cipher('BATMAN',5)).to eq('WVOHVI')
	end

	it 'correctly changes a sentence' do
		expect(caesar_cipher('Why do you want to kill me',3)).to eq('Tev al vlr txkq ql hfii jb')
	end

	it 'does not change anything besides letters' do
		expect(caesar_cipher('One, two, 3?',7)).to eq('Hgx, mph, 3?')
	end
end