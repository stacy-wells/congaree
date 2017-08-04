require 'rails_helper'

describe Chart do
  describe '.width' do
    it 'returns a the width of a chart when given a device type' do
      width = Chart.width("mobile")

      expect(width).to eq "300px"
    end

    it 'returns a the width of a chart when given a device type' do
      width = Chart.width("desktop")

      expect(width).to eq "600px"
    end
  end
end
