# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: pancake.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "pancake.baker.Pancake" do
    optional :chef_name, :string, 1
    optional :menu, :enum, 2, "pancake.baker.Pancake.Menu"
    optional :technical_score, :float, 3
    optional :create_time, :message, 15, "google.protobuf.Timestamp"
  end
  add_enum "pancake.baker.Pancake.Menu" do
    value :UNKNOWN, 0
    value :CLASSIC, 1
    value :BANANA_AND_WHIP, 2
    value :BACON_AND_CHEESE, 3
    value :MIX_BERRY, 4
    value :BAKED_MARSHMALLOW, 5
    value :SPICY_CURRY, 6
  end
  add_message "pancake.baker.Report" do
    repeated :bake_counts, :message, 1, "pancake.baker.Report.BakeCount"
  end
  add_message "pancake.baker.Report.BakeCount" do
    optional :menu, :enum, 1, "pancake.baker.Pancake.Menu"
    optional :count, :int32, 2
  end
  add_message "pancake.baker.BakeRequest" do
    optional :menu, :enum, 1, "pancake.baker.Pancake.Menu"
  end
  add_message "pancake.baker.BakeResponse" do
    optional :pancake, :message, 1, "pancake.baker.Pancake"
  end
  add_message "pancake.baker.ReportRequest" do
  end
  add_message "pancake.baker.ReportResponse" do
    optional :report, :message, 1, "pancake.baker.Report"
  end
end

module Pancake
  module Baker
    Pancake = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.Pancake").msgclass
    Pancake::Menu = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.Pancake.Menu").enummodule
    Report = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.Report").msgclass
    Report::BakeCount = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.Report.BakeCount").msgclass
    BakeRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.BakeRequest").msgclass
    BakeResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.BakeResponse").msgclass
    ReportRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.ReportRequest").msgclass
    ReportResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("pancake.baker.ReportResponse").msgclass
  end
end
