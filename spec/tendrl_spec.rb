require 'spec_helper'

RSpec.describe Tendrl do

  context 'configuration' do

    it 'load the global sds configuration' do
      Tendrl.sds_config('spec/fixtures')
      expect(Tendrl.sds_config['gluster-3.8.3']).not_to be_empty
      expect(Tendrl.sds_config['gluster-3.8.3']['object_details']['tendrl_context']['attrs']['sds_type']['value']).to eq('gluster-3.8.3')
    end
     

  end

end


