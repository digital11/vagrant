require 'vagrant'

module VagrantPlugins
  module SyncedFolderSMB
    class Config < Vagrant.plugin('2', :config)
      attr_accessor :default_user
      attr_accessor :default_host
      attr_accessor :default_pass

      def validate(machine)
        errors = _detected_errors

        { 'SyncedFolderSMB' => errors }
      end
    end
  end
end