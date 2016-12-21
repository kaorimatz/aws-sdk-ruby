# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:inspector)

module Aws
  module Inspector
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs

      @identifier = :inspector

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::CredentialsConfiguration)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::IdempotencyToken)
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      #
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #
      # @option options [String] :access_key_id
      #
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      #
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      #
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      #
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      #
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      #
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      #
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      #
      # @option options [String] :secret_access_key
      #
      # @option options [String] :session_token
      #
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      #
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      #
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      #
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Assigns attributes (key and value pairs) to the findings that are
      # specified by the ARNs of the findings.
      #
      # @option params [required, Array<String>] :finding_arns
      #   The ARNs that specify the findings that you want to assign attributes
      #   to.
      #
      # @option params [required, Array<Types::Attribute>] :attributes
      #   The array of attributes that you want to assign to specified findings.
      #
      # @return [Types::AddAttributesToFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddAttributesToFindingsResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.add_attributes_to_findings({
      #     finding_arns: ["Arn"], # required
      #     attributes: [ # required
      #       {
      #         key: "AttributeKey", # required
      #         value: "AttributeValue",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload add_attributes_to_findings(params = {})
      # @param [Hash] params ({})
      def add_attributes_to_findings(params = {}, options = {})
        req = build_request(:add_attributes_to_findings, params)
        req.send_request(options)
      end

      # Creates a new assessment target using the ARN of the resource group
      # that is generated by CreateResourceGroup. You can create up to 50
      # assessment targets per AWS account. You can run up to 500 concurrent
      # agents per AWS account. For more information, see [ Amazon Inspector
      # Assessment Targets][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html
      #
      # @option params [required, String] :assessment_target_name
      #   The user-defined name that identifies the assessment target that you
      #   want to create. The name must be unique within the AWS account.
      #
      # @option params [required, String] :resource_group_arn
      #   The ARN that specifies the resource group that is used to create the
      #   assessment target.
      #
      # @return [Types::CreateAssessmentTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAssessmentTargetResponse#assessment_target_arn #assessment_target_arn} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.create_assessment_target({
      #     assessment_target_name: "AssessmentTargetName", # required
      #     resource_group_arn: "Arn", # required
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_target_arn #=> String
      #
      # @overload create_assessment_target(params = {})
      # @param [Hash] params ({})
      def create_assessment_target(params = {}, options = {})
        req = build_request(:create_assessment_target, params)
        req.send_request(options)
      end

      # Creates an assessment template for the assessment target that is
      # specified by the ARN of the assessment target.
      #
      # @option params [required, String] :assessment_target_arn
      #   The ARN that specifies the assessment target for which you want to
      #   create the assessment template.
      #
      # @option params [required, String] :assessment_template_name
      #   The user-defined name that identifies the assessment template that you
      #   want to create. You can create several assessment templates for an
      #   assessment target. The names of the assessment templates that
      #   correspond to a particular assessment target must be unique.
      #
      # @option params [required, Integer] :duration_in_seconds
      #   The duration of the assessment run in seconds. The default value is
      #   3600 seconds (one hour).
      #
      # @option params [required, Array<String>] :rules_package_arns
      #   The ARNs that specify the rules packages that you want to attach to
      #   the assessment template.
      #
      # @option params [Array<Types::Attribute>] :user_attributes_for_findings
      #   The user-defined attributes that are assigned to every finding that is
      #   generated by the assessment run that uses this assessment template.
      #
      # @return [Types::CreateAssessmentTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAssessmentTemplateResponse#assessment_template_arn #assessment_template_arn} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.create_assessment_template({
      #     assessment_target_arn: "Arn", # required
      #     assessment_template_name: "AssessmentTemplateName", # required
      #     duration_in_seconds: 1, # required
      #     rules_package_arns: ["Arn"], # required
      #     user_attributes_for_findings: [
      #       {
      #         key: "AttributeKey", # required
      #         value: "AttributeValue",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_template_arn #=> String
      #
      # @overload create_assessment_template(params = {})
      # @param [Hash] params ({})
      def create_assessment_template(params = {}, options = {})
        req = build_request(:create_assessment_template, params)
        req.send_request(options)
      end

      # Creates a resource group using the specified set of tags (key and
      # value pairs) that are used to select the EC2 instances to be included
      # in an Amazon Inspector assessment target. The created resource group
      # is then used to create an Amazon Inspector assessment target. For more
      # information, see CreateAssessmentTarget.
      #
      # @option params [required, Array<Types::ResourceGroupTag>] :resource_group_tags
      #   A collection of keys and an array of possible values,
      #   '\[\\\{"key":"key1","values":\["Value1","Value2"\]\\},\\\{"key":"Key2","values":\["Value3"\]\\}\]'.
      #
      #   For
      #   example,'\[\\\{"key":"Name","values":\["TestEC2Instance"\]\\}\]'.
      #
      # @return [Types::CreateResourceGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateResourceGroupResponse#resource_group_arn #resource_group_arn} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.create_resource_group({
      #     resource_group_tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #
      #   resp.resource_group_arn #=> String
      #
      # @overload create_resource_group(params = {})
      # @param [Hash] params ({})
      def create_resource_group(params = {}, options = {})
        req = build_request(:create_resource_group, params)
        req.send_request(options)
      end

      # Deletes the assessment run that is specified by the ARN of the
      # assessment run.
      #
      # @option params [required, String] :assessment_run_arn
      #   The ARN that specifies the assessment run that you want to delete.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.delete_assessment_run({
      #     assessment_run_arn: "Arn", # required
      #   })
      #
      # @overload delete_assessment_run(params = {})
      # @param [Hash] params ({})
      def delete_assessment_run(params = {}, options = {})
        req = build_request(:delete_assessment_run, params)
        req.send_request(options)
      end

      # Deletes the assessment target that is specified by the ARN of the
      # assessment target.
      #
      # @option params [required, String] :assessment_target_arn
      #   The ARN that specifies the assessment target that you want to delete.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.delete_assessment_target({
      #     assessment_target_arn: "Arn", # required
      #   })
      #
      # @overload delete_assessment_target(params = {})
      # @param [Hash] params ({})
      def delete_assessment_target(params = {}, options = {})
        req = build_request(:delete_assessment_target, params)
        req.send_request(options)
      end

      # Deletes the assessment template that is specified by the ARN of the
      # assessment template.
      #
      # @option params [required, String] :assessment_template_arn
      #   The ARN that specifies the assessment template that you want to
      #   delete.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.delete_assessment_template({
      #     assessment_template_arn: "Arn", # required
      #   })
      #
      # @overload delete_assessment_template(params = {})
      # @param [Hash] params ({})
      def delete_assessment_template(params = {}, options = {})
        req = build_request(:delete_assessment_template, params)
        req.send_request(options)
      end

      # Describes the assessment runs that are specified by the ARNs of the
      # assessment runs.
      #
      # @option params [required, Array<String>] :assessment_run_arns
      #   The ARN that specifies the assessment run that you want to describe.
      #
      # @return [Types::DescribeAssessmentRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAssessmentRunsResponse#assessment_runs #assessment_runs} => Array&lt;Types::AssessmentRun&gt;
      #   * {Types::DescribeAssessmentRunsResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.describe_assessment_runs({
      #     assessment_run_arns: ["Arn"], # required
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_runs #=> Array
      #   resp.assessment_runs[0].arn #=> String
      #   resp.assessment_runs[0].name #=> String
      #   resp.assessment_runs[0].assessment_template_arn #=> String
      #   resp.assessment_runs[0].state #=> String, one of "CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "EVALUATING_RULES", "FAILED", "COMPLETED", "COMPLETED_WITH_ERRORS"
      #   resp.assessment_runs[0].duration_in_seconds #=> Integer
      #   resp.assessment_runs[0].rules_package_arns #=> Array
      #   resp.assessment_runs[0].rules_package_arns[0] #=> String
      #   resp.assessment_runs[0].user_attributes_for_findings #=> Array
      #   resp.assessment_runs[0].user_attributes_for_findings[0].key #=> String
      #   resp.assessment_runs[0].user_attributes_for_findings[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.assessment_runs[0].created_at #=> Time
      #   resp.assessment_runs[0].started_at #=> Time
      #   resp.assessment_runs[0].completed_at #=> Time
      #   resp.assessment_runs[0].state_changed_at #=> Time
      #   resp.assessment_runs[0].data_collected #=> Boolean
      #   resp.assessment_runs[0].state_changes #=> Array
      #   resp.assessment_runs[0].state_changes[0].state_changed_at #=> Time
      #   resp.assessment_runs[0].state_changes[0].state #=> String, one of "CREATED", "START_DATA_COLLECTION_PENDING", "START_DATA_COLLECTION_IN_PROGRESS", "COLLECTING_DATA", "STOP_DATA_COLLECTION_PENDING", "DATA_COLLECTED", "EVALUATING_RULES", "FAILED", "COMPLETED", "COMPLETED_WITH_ERRORS"
      #   resp.assessment_runs[0].notifications #=> Array
      #   resp.assessment_runs[0].notifications[0].date #=> Time
      #   resp.assessment_runs[0].notifications[0].event #=> String, one of "ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"
      #   resp.assessment_runs[0].notifications[0].message #=> String
      #   resp.assessment_runs[0].notifications[0].error #=> Boolean
      #   resp.assessment_runs[0].notifications[0].sns_topic_arn #=> String
      #   resp.assessment_runs[0].notifications[0].sns_publish_status_code #=> String, one of "SUCCESS", "TOPIC_DOES_NOT_EXIST", "ACCESS_DENIED", "INTERNAL_ERROR"
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload describe_assessment_runs(params = {})
      # @param [Hash] params ({})
      def describe_assessment_runs(params = {}, options = {})
        req = build_request(:describe_assessment_runs, params)
        req.send_request(options)
      end

      # Describes the assessment targets that are specified by the ARNs of the
      # assessment targets.
      #
      # @option params [required, Array<String>] :assessment_target_arns
      #   The ARNs that specifies the assessment targets that you want to
      #   describe.
      #
      # @return [Types::DescribeAssessmentTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAssessmentTargetsResponse#assessment_targets #assessment_targets} => Array&lt;Types::AssessmentTarget&gt;
      #   * {Types::DescribeAssessmentTargetsResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.describe_assessment_targets({
      #     assessment_target_arns: ["Arn"], # required
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_targets #=> Array
      #   resp.assessment_targets[0].arn #=> String
      #   resp.assessment_targets[0].name #=> String
      #   resp.assessment_targets[0].resource_group_arn #=> String
      #   resp.assessment_targets[0].created_at #=> Time
      #   resp.assessment_targets[0].updated_at #=> Time
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload describe_assessment_targets(params = {})
      # @param [Hash] params ({})
      def describe_assessment_targets(params = {}, options = {})
        req = build_request(:describe_assessment_targets, params)
        req.send_request(options)
      end

      # Describes the assessment templates that are specified by the ARNs of
      # the assessment templates.
      #
      # @option params [required, Array<String>] :assessment_template_arns
      #   The ARN that specifiesthe assessment templates that you want to
      #   describe.
      #
      # @return [Types::DescribeAssessmentTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAssessmentTemplatesResponse#assessment_templates #assessment_templates} => Array&lt;Types::AssessmentTemplate&gt;
      #   * {Types::DescribeAssessmentTemplatesResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.describe_assessment_templates({
      #     assessment_template_arns: ["Arn"], # required
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_templates #=> Array
      #   resp.assessment_templates[0].arn #=> String
      #   resp.assessment_templates[0].name #=> String
      #   resp.assessment_templates[0].assessment_target_arn #=> String
      #   resp.assessment_templates[0].duration_in_seconds #=> Integer
      #   resp.assessment_templates[0].rules_package_arns #=> Array
      #   resp.assessment_templates[0].rules_package_arns[0] #=> String
      #   resp.assessment_templates[0].user_attributes_for_findings #=> Array
      #   resp.assessment_templates[0].user_attributes_for_findings[0].key #=> String
      #   resp.assessment_templates[0].user_attributes_for_findings[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.assessment_templates[0].created_at #=> Time
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload describe_assessment_templates(params = {})
      # @param [Hash] params ({})
      def describe_assessment_templates(params = {}, options = {})
        req = build_request(:describe_assessment_templates, params)
        req.send_request(options)
      end

      # Describes the IAM role that enables Amazon Inspector to access your
      # AWS account.
      #
      # @return [Types::DescribeCrossAccountAccessRoleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCrossAccountAccessRoleResponse#role_arn #role_arn} => String
      #   * {Types::DescribeCrossAccountAccessRoleResponse#valid #valid} => Boolean
      #   * {Types::DescribeCrossAccountAccessRoleResponse#registered_at #registered_at} => Time
      #
      # @example Response structure
      #
      #   resp.role_arn #=> String
      #   resp.valid #=> Boolean
      #   resp.registered_at #=> Time
      #
      # @overload describe_cross_account_access_role(params = {})
      # @param [Hash] params ({})
      def describe_cross_account_access_role(params = {}, options = {})
        req = build_request(:describe_cross_account_access_role, params)
        req.send_request(options)
      end

      # Describes the findings that are specified by the ARNs of the findings.
      #
      # @option params [required, Array<String>] :finding_arns
      #   The ARN that specifies the finding that you want to describe.
      #
      # @option params [String] :locale
      #   The locale into which you want to translate a finding description,
      #   recommendation, and the short description that identifies the finding.
      #
      # @return [Types::DescribeFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
      #   * {Types::DescribeFindingsResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.describe_findings({
      #     finding_arns: ["Arn"], # required
      #     locale: "EN_US", # accepts EN_US
      #   })
      #
      # @example Response structure
      #
      #   resp.findings #=> Array
      #   resp.findings[0].arn #=> String
      #   resp.findings[0].schema_version #=> Integer
      #   resp.findings[0].service #=> String
      #   resp.findings[0].service_attributes.schema_version #=> Integer
      #   resp.findings[0].service_attributes.assessment_run_arn #=> String
      #   resp.findings[0].service_attributes.rules_package_arn #=> String
      #   resp.findings[0].asset_type #=> String, one of "ec2-instance"
      #   resp.findings[0].asset_attributes.schema_version #=> Integer
      #   resp.findings[0].asset_attributes.agent_id #=> String
      #   resp.findings[0].asset_attributes.auto_scaling_group #=> String
      #   resp.findings[0].asset_attributes.ami_id #=> String
      #   resp.findings[0].asset_attributes.hostname #=> String
      #   resp.findings[0].asset_attributes.ipv4_addresses #=> Array
      #   resp.findings[0].asset_attributes.ipv4_addresses[0] #=> String
      #   resp.findings[0].id #=> String
      #   resp.findings[0].title #=> String
      #   resp.findings[0].description #=> String
      #   resp.findings[0].recommendation #=> String
      #   resp.findings[0].severity #=> String, one of "Low", "Medium", "High", "Informational", "Undefined"
      #   resp.findings[0].numeric_severity #=> Float
      #   resp.findings[0].confidence #=> Integer
      #   resp.findings[0].indicator_of_compromise #=> Boolean
      #   resp.findings[0].attributes #=> Array
      #   resp.findings[0].attributes[0].key #=> String
      #   resp.findings[0].attributes[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.findings[0].user_attributes #=> Array
      #   resp.findings[0].user_attributes[0].key #=> String
      #   resp.findings[0].user_attributes[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.findings[0].created_at #=> Time
      #   resp.findings[0].updated_at #=> Time
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload describe_findings(params = {})
      # @param [Hash] params ({})
      def describe_findings(params = {}, options = {})
        req = build_request(:describe_findings, params)
        req.send_request(options)
      end

      # Describes the resource groups that are specified by the ARNs of the
      # resource groups.
      #
      # @option params [required, Array<String>] :resource_group_arns
      #   The ARN that specifies the resource group that you want to describe.
      #
      # @return [Types::DescribeResourceGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeResourceGroupsResponse#resource_groups #resource_groups} => Array&lt;Types::ResourceGroup&gt;
      #   * {Types::DescribeResourceGroupsResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.describe_resource_groups({
      #     resource_group_arns: ["Arn"], # required
      #   })
      #
      # @example Response structure
      #
      #   resp.resource_groups #=> Array
      #   resp.resource_groups[0].arn #=> String
      #   resp.resource_groups[0].tags #=> Array
      #   resp.resource_groups[0].tags[0].key #=> String
      #   resp.resource_groups[0].tags[0].value #=> String
      #   resp.resource_groups[0].created_at #=> Time
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload describe_resource_groups(params = {})
      # @param [Hash] params ({})
      def describe_resource_groups(params = {}, options = {})
        req = build_request(:describe_resource_groups, params)
        req.send_request(options)
      end

      # Describes the rules packages that are specified by the ARNs of the
      # rules packages.
      #
      # @option params [required, Array<String>] :rules_package_arns
      #   The ARN that specifies the rules package that you want to describe.
      #
      # @option params [String] :locale
      #   The locale that you want to translate a rules package description
      #   into.
      #
      # @return [Types::DescribeRulesPackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeRulesPackagesResponse#rules_packages #rules_packages} => Array&lt;Types::RulesPackage&gt;
      #   * {Types::DescribeRulesPackagesResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.describe_rules_packages({
      #     rules_package_arns: ["Arn"], # required
      #     locale: "EN_US", # accepts EN_US
      #   })
      #
      # @example Response structure
      #
      #   resp.rules_packages #=> Array
      #   resp.rules_packages[0].arn #=> String
      #   resp.rules_packages[0].name #=> String
      #   resp.rules_packages[0].version #=> String
      #   resp.rules_packages[0].provider #=> String
      #   resp.rules_packages[0].description #=> String
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload describe_rules_packages(params = {})
      # @param [Hash] params ({})
      def describe_rules_packages(params = {}, options = {})
        req = build_request(:describe_rules_packages, params)
        req.send_request(options)
      end

      # Information about the data that is collected for the specified
      # assessment run.
      #
      # @option params [required, String] :assessment_run_arn
      #   The ARN that specifies the assessment run that has the telemetry data
      #   that you want to obtain.
      #
      # @return [Types::GetTelemetryMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTelemetryMetadataResponse#telemetry_metadata #telemetry_metadata} => Array&lt;Types::TelemetryMetadata&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.get_telemetry_metadata({
      #     assessment_run_arn: "Arn", # required
      #   })
      #
      # @example Response structure
      #
      #   resp.telemetry_metadata #=> Array
      #   resp.telemetry_metadata[0].message_type #=> String
      #   resp.telemetry_metadata[0].count #=> Integer
      #   resp.telemetry_metadata[0].data_size #=> Integer
      #
      # @overload get_telemetry_metadata(params = {})
      # @param [Hash] params ({})
      def get_telemetry_metadata(params = {}, options = {})
        req = build_request(:get_telemetry_metadata, params)
        req.send_request(options)
      end

      # Lists the agents of the assessment runs that are specified by the ARNs
      # of the assessment runs.
      #
      # @option params [required, String] :assessment_run_arn
      #   The ARN that specifies the assessment run whose agents you want to
      #   list.
      #
      # @option params [Types::AgentFilter] :filter
      #   You can use this parameter to specify a subset of data to be included
      #   in the action's response.
      #
      #   For a record to match a filter, all specified filter attributes must
      #   match. When multiple values are specified for a filter attribute, any
      #   of the values can match.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the
      #   **ListAssessmentRunAgents** action. Subsequent calls to the action
      #   fill **nextToken** in the request with the value of **NextToken** from
      #   the previous response to continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items
      #   that you want in the response. The default value is 10. The maximum
      #   value is 500.
      #
      # @return [Types::ListAssessmentRunAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAssessmentRunAgentsResponse#assessment_run_agents #assessment_run_agents} => Array&lt;Types::AssessmentRunAgent&gt;
      #   * {Types::ListAssessmentRunAgentsResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_assessment_run_agents({
      #     assessment_run_arn: "Arn", # required
      #     filter: {
      #       agent_healths: ["HEALTHY"], # required, accepts HEALTHY, UNHEALTHY
      #       agent_health_codes: ["IDLE"], # required, accepts IDLE, RUNNING, SHUTDOWN, UNHEALTHY, THROTTLED, UNKNOWN
      #     },
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_run_agents #=> Array
      #   resp.assessment_run_agents[0].agent_id #=> String
      #   resp.assessment_run_agents[0].assessment_run_arn #=> String
      #   resp.assessment_run_agents[0].agent_health #=> String, one of "HEALTHY", "UNHEALTHY"
      #   resp.assessment_run_agents[0].agent_health_code #=> String, one of "IDLE", "RUNNING", "SHUTDOWN", "UNHEALTHY", "THROTTLED", "UNKNOWN"
      #   resp.assessment_run_agents[0].agent_health_details #=> String
      #   resp.assessment_run_agents[0].auto_scaling_group #=> String
      #   resp.assessment_run_agents[0].telemetry_metadata #=> Array
      #   resp.assessment_run_agents[0].telemetry_metadata[0].message_type #=> String
      #   resp.assessment_run_agents[0].telemetry_metadata[0].count #=> Integer
      #   resp.assessment_run_agents[0].telemetry_metadata[0].data_size #=> Integer
      #   resp.next_token #=> String
      #
      # @overload list_assessment_run_agents(params = {})
      # @param [Hash] params ({})
      def list_assessment_run_agents(params = {}, options = {})
        req = build_request(:list_assessment_run_agents, params)
        req.send_request(options)
      end

      # Lists the assessment runs that correspond to the assessment templates
      # that are specified by the ARNs of the assessment templates.
      #
      # @option params [Array<String>] :assessment_template_arns
      #   The ARNs that specify the assessment templates whose assessment runs
      #   you want to list.
      #
      # @option params [Types::AssessmentRunFilter] :filter
      #   You can use this parameter to specify a subset of data to be included
      #   in the action's response.
      #
      #   For a record to match a filter, all specified filter attributes must
      #   match. When multiple values are specified for a filter attribute, any
      #   of the values can match.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the
      #   **ListAssessmentRuns** action. Subsequent calls to the action fill
      #   **nextToken** in the request with the value of **NextToken** from the
      #   previous response to continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items
      #   that you want in the response. The default value is 10. The maximum
      #   value is 500.
      #
      # @return [Types::ListAssessmentRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAssessmentRunsResponse#assessment_run_arns #assessment_run_arns} => Array&lt;String&gt;
      #   * {Types::ListAssessmentRunsResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_assessment_runs({
      #     assessment_template_arns: ["Arn"],
      #     filter: {
      #       name_pattern: "NamePattern",
      #       states: ["CREATED"], # accepts CREATED, START_DATA_COLLECTION_PENDING, START_DATA_COLLECTION_IN_PROGRESS, COLLECTING_DATA, STOP_DATA_COLLECTION_PENDING, DATA_COLLECTED, EVALUATING_RULES, FAILED, COMPLETED, COMPLETED_WITH_ERRORS
      #       duration_range: {
      #         min_seconds: 1,
      #         max_seconds: 1,
      #       },
      #       rules_package_arns: ["Arn"],
      #       start_time_range: {
      #         begin_date: Time.now,
      #         end_date: Time.now,
      #       },
      #       completion_time_range: {
      #         begin_date: Time.now,
      #         end_date: Time.now,
      #       },
      #       state_change_time_range: {
      #         begin_date: Time.now,
      #         end_date: Time.now,
      #       },
      #     },
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_run_arns #=> Array
      #   resp.assessment_run_arns[0] #=> String
      #   resp.next_token #=> String
      #
      # @overload list_assessment_runs(params = {})
      # @param [Hash] params ({})
      def list_assessment_runs(params = {}, options = {})
        req = build_request(:list_assessment_runs, params)
        req.send_request(options)
      end

      # Lists the ARNs of the assessment targets within this AWS account. For
      # more information about assessment targets, see [Amazon Inspector
      # Assessment Targets][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html
      #
      # @option params [Types::AssessmentTargetFilter] :filter
      #   You can use this parameter to specify a subset of data to be included
      #   in the action's response.
      #
      #   For a record to match a filter, all specified filter attributes must
      #   match. When multiple values are specified for a filter attribute, any
      #   of the values can match.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the
      #   **ListAssessmentTargets** action. Subsequent calls to the action fill
      #   **nextToken** in the request with the value of **NextToken** from the
      #   previous response to continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items you
      #   want in the response. The default value is 10. The maximum value is
      #   500.
      #
      # @return [Types::ListAssessmentTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAssessmentTargetsResponse#assessment_target_arns #assessment_target_arns} => Array&lt;String&gt;
      #   * {Types::ListAssessmentTargetsResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_assessment_targets({
      #     filter: {
      #       assessment_target_name_pattern: "NamePattern",
      #     },
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_target_arns #=> Array
      #   resp.assessment_target_arns[0] #=> String
      #   resp.next_token #=> String
      #
      # @overload list_assessment_targets(params = {})
      # @param [Hash] params ({})
      def list_assessment_targets(params = {}, options = {})
        req = build_request(:list_assessment_targets, params)
        req.send_request(options)
      end

      # Lists the assessment templates that correspond to the assessment
      # targets that are specified by the ARNs of the assessment targets.
      #
      # @option params [Array<String>] :assessment_target_arns
      #   A list of ARNs that specifies the assessment targets whose assessment
      #   templates you want to list.
      #
      # @option params [Types::AssessmentTemplateFilter] :filter
      #   You can use this parameter to specify a subset of data to be included
      #   in the action's response.
      #
      #   For a record to match a filter, all specified filter attributes must
      #   match. When multiple values are specified for a filter attribute, any
      #   of the values can match.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the
      #   **ListAssessmentTemplates** action. Subsequent calls to the action
      #   fill **nextToken** in the request with the value of **NextToken** from
      #   the previous response to continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items you
      #   want in the response. The default value is 10. The maximum value is
      #   500.
      #
      # @return [Types::ListAssessmentTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAssessmentTemplatesResponse#assessment_template_arns #assessment_template_arns} => Array&lt;String&gt;
      #   * {Types::ListAssessmentTemplatesResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_assessment_templates({
      #     assessment_target_arns: ["Arn"],
      #     filter: {
      #       name_pattern: "NamePattern",
      #       duration_range: {
      #         min_seconds: 1,
      #         max_seconds: 1,
      #       },
      #       rules_package_arns: ["Arn"],
      #     },
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_template_arns #=> Array
      #   resp.assessment_template_arns[0] #=> String
      #   resp.next_token #=> String
      #
      # @overload list_assessment_templates(params = {})
      # @param [Hash] params ({})
      def list_assessment_templates(params = {}, options = {})
        req = build_request(:list_assessment_templates, params)
        req.send_request(options)
      end

      # Lists all the event subscriptions for the assessment template that is
      # specified by the ARN of the assessment template. For more information,
      # see SubscribeToEvent and UnsubscribeFromEvent.
      #
      # @option params [String] :resource_arn
      #   The ARN of the assessment template for which you want to list the
      #   existing event subscriptions.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the
      #   **ListEventSubscriptions** action. Subsequent calls to the action fill
      #   **nextToken** in the request with the value of **NextToken** from the
      #   previous response to continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items you
      #   want in the response. The default value is 10. The maximum value is
      #   500.
      #
      # @return [Types::ListEventSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListEventSubscriptionsResponse#subscriptions #subscriptions} => Array&lt;Types::Subscription&gt;
      #   * {Types::ListEventSubscriptionsResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_event_subscriptions({
      #     resource_arn: "Arn",
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.subscriptions #=> Array
      #   resp.subscriptions[0].resource_arn #=> String
      #   resp.subscriptions[0].topic_arn #=> String
      #   resp.subscriptions[0].event_subscriptions #=> Array
      #   resp.subscriptions[0].event_subscriptions[0].event #=> String, one of "ASSESSMENT_RUN_STARTED", "ASSESSMENT_RUN_COMPLETED", "ASSESSMENT_RUN_STATE_CHANGED", "FINDING_REPORTED", "OTHER"
      #   resp.subscriptions[0].event_subscriptions[0].subscribed_at #=> Time
      #   resp.next_token #=> String
      #
      # @overload list_event_subscriptions(params = {})
      # @param [Hash] params ({})
      def list_event_subscriptions(params = {}, options = {})
        req = build_request(:list_event_subscriptions, params)
        req.send_request(options)
      end

      # Lists findings that are generated by the assessment runs that are
      # specified by the ARNs of the assessment runs.
      #
      # @option params [Array<String>] :assessment_run_arns
      #   The ARNs of the assessment runs that generate the findings that you
      #   want to list.
      #
      # @option params [Types::FindingFilter] :filter
      #   You can use this parameter to specify a subset of data to be included
      #   in the action's response.
      #
      #   For a record to match a filter, all specified filter attributes must
      #   match. When multiple values are specified for a filter attribute, any
      #   of the values can match.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the **ListFindings**
      #   action. Subsequent calls to the action fill **nextToken** in the
      #   request with the value of **NextToken** from the previous response to
      #   continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items you
      #   want in the response. The default value is 10. The maximum value is
      #   500.
      #
      # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListFindingsResponse#finding_arns #finding_arns} => Array&lt;String&gt;
      #   * {Types::ListFindingsResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_findings({
      #     assessment_run_arns: ["Arn"],
      #     filter: {
      #       agent_ids: ["AgentId"],
      #       auto_scaling_groups: ["AutoScalingGroup"],
      #       rule_names: ["RuleName"],
      #       severities: ["Low"], # accepts Low, Medium, High, Informational, Undefined
      #       rules_package_arns: ["Arn"],
      #       attributes: [
      #         {
      #           key: "AttributeKey", # required
      #           value: "AttributeValue",
      #         },
      #       ],
      #       user_attributes: [
      #         {
      #           key: "AttributeKey", # required
      #           value: "AttributeValue",
      #         },
      #       ],
      #       creation_time_range: {
      #         begin_date: Time.now,
      #         end_date: Time.now,
      #       },
      #     },
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.finding_arns #=> Array
      #   resp.finding_arns[0] #=> String
      #   resp.next_token #=> String
      #
      # @overload list_findings(params = {})
      # @param [Hash] params ({})
      def list_findings(params = {}, options = {})
        req = build_request(:list_findings, params)
        req.send_request(options)
      end

      # Lists all available Amazon Inspector rules packages.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the **ListRulesPackages**
      #   action. Subsequent calls to the action fill **nextToken** in the
      #   request with the value of **NextToken** from the previous response to
      #   continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items you
      #   want in the response. The default value is 10. The maximum value is
      #   500.
      #
      # @return [Types::ListRulesPackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListRulesPackagesResponse#rules_package_arns #rules_package_arns} => Array&lt;String&gt;
      #   * {Types::ListRulesPackagesResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_rules_packages({
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.rules_package_arns #=> Array
      #   resp.rules_package_arns[0] #=> String
      #   resp.next_token #=> String
      #
      # @overload list_rules_packages(params = {})
      # @param [Hash] params ({})
      def list_rules_packages(params = {}, options = {})
        req = build_request(:list_rules_packages, params)
        req.send_request(options)
      end

      # Lists all tags associated with an assessment template.
      #
      # @option params [required, String] :resource_arn
      #   The ARN that specifies the assessment template whose tags you want to
      #   list.
      #
      # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.list_tags_for_resource({
      #     resource_arn: "Arn", # required
      #   })
      #
      # @example Response structure
      #
      #   resp.tags #=> Array
      #   resp.tags[0].key #=> String
      #   resp.tags[0].value #=> String
      #
      # @overload list_tags_for_resource(params = {})
      # @param [Hash] params ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # Previews the agents installed on the EC2 instances that are part of
      # the specified assessment target.
      #
      # @option params [required, String] :preview_agents_arn
      #   The ARN of the assessment target whose agents you want to preview.
      #
      # @option params [String] :next_token
      #   You can use this parameter when paginating results. Set the value of
      #   this parameter to null on your first call to the **PreviewAgents**
      #   action. Subsequent calls to the action fill **nextToken** in the
      #   request with the value of **NextToken** from the previous response to
      #   continue listing data.
      #
      # @option params [Integer] :max_results
      #   You can use this parameter to indicate the maximum number of items you
      #   want in the response. The default value is 10. The maximum value is
      #   500.
      #
      # @return [Types::PreviewAgentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PreviewAgentsResponse#agent_previews #agent_previews} => Array&lt;Types::AgentPreview&gt;
      #   * {Types::PreviewAgentsResponse#next_token #next_token} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.preview_agents({
      #     preview_agents_arn: "Arn", # required
      #     next_token: "PaginationToken",
      #     max_results: 1,
      #   })
      #
      # @example Response structure
      #
      #   resp.agent_previews #=> Array
      #   resp.agent_previews[0].agent_id #=> String
      #   resp.agent_previews[0].auto_scaling_group #=> String
      #   resp.next_token #=> String
      #
      # @overload preview_agents(params = {})
      # @param [Hash] params ({})
      def preview_agents(params = {}, options = {})
        req = build_request(:preview_agents, params)
        req.send_request(options)
      end

      # Registers the IAM role that Amazon Inspector uses to list your EC2
      # instances at the start of the assessment run or when you call the
      # PreviewAgents action.
      #
      # @option params [required, String] :role_arn
      #   The ARN of the IAM role that Amazon Inspector uses to list your EC2
      #   instances during the assessment run or when you call the PreviewAgents
      #   action.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.register_cross_account_access_role({
      #     role_arn: "Arn", # required
      #   })
      #
      # @overload register_cross_account_access_role(params = {})
      # @param [Hash] params ({})
      def register_cross_account_access_role(params = {}, options = {})
        req = build_request(:register_cross_account_access_role, params)
        req.send_request(options)
      end

      # Removes entire attributes (key and value pairs) from the findings that
      # are specified by the ARNs of the findings where an attribute with the
      # specified key exists.
      #
      # @option params [required, Array<String>] :finding_arns
      #   The ARNs that specify the findings that you want to remove attributes
      #   from.
      #
      # @option params [required, Array<String>] :attribute_keys
      #   The array of attribute keys that you want to remove from specified
      #   findings.
      #
      # @return [Types::RemoveAttributesFromFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RemoveAttributesFromFindingsResponse#failed_items #failed_items} => Hash&lt;String,Types::FailedItemDetails&gt;
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.remove_attributes_from_findings({
      #     finding_arns: ["Arn"], # required
      #     attribute_keys: ["AttributeKey"], # required
      #   })
      #
      # @example Response structure
      #
      #   resp.failed_items #=> Hash
      #   resp.failed_items["Arn"].failure_code #=> String, one of "INVALID_ARN", "DUPLICATE_ARN", "ITEM_DOES_NOT_EXIST", "ACCESS_DENIED", "LIMIT_EXCEEDED", "INTERNAL_ERROR"
      #   resp.failed_items["Arn"].retryable #=> Boolean
      #
      # @overload remove_attributes_from_findings(params = {})
      # @param [Hash] params ({})
      def remove_attributes_from_findings(params = {}, options = {})
        req = build_request(:remove_attributes_from_findings, params)
        req.send_request(options)
      end

      # Sets tags (key and value pairs) to the assessment template that is
      # specified by the ARN of the assessment template.
      #
      # @option params [required, String] :resource_arn
      #   The ARN of the assessment template that you want to set tags to.
      #
      # @option params [Array<Types::Tag>] :tags
      #   A collection of key and value pairs that you want to set to the
      #   assessment template.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.set_tags_for_resource({
      #     resource_arn: "Arn", # required
      #     tags: [
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       },
      #     ],
      #   })
      #
      # @overload set_tags_for_resource(params = {})
      # @param [Hash] params ({})
      def set_tags_for_resource(params = {}, options = {})
        req = build_request(:set_tags_for_resource, params)
        req.send_request(options)
      end

      # Starts the assessment run specified by the ARN of the assessment
      # template. For this API to function properly, you must not exceed the
      # limit of running up to 500 concurrent agents per AWS account.
      #
      # @option params [required, String] :assessment_template_arn
      #   The ARN of the assessment template of the assessment run that you want
      #   to start.
      #
      # @option params [String] :assessment_run_name
      #   You can specify the name for the assessment run, or you can use the
      #   auto-generated name that is based on the assessment template name. The
      #   name must be unique for the assessment template.
      #
      # @return [Types::StartAssessmentRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartAssessmentRunResponse#assessment_run_arn #assessment_run_arn} => String
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.start_assessment_run({
      #     assessment_template_arn: "Arn", # required
      #     assessment_run_name: "AssessmentRunName",
      #   })
      #
      # @example Response structure
      #
      #   resp.assessment_run_arn #=> String
      #
      # @overload start_assessment_run(params = {})
      # @param [Hash] params ({})
      def start_assessment_run(params = {}, options = {})
        req = build_request(:start_assessment_run, params)
        req.send_request(options)
      end

      # Stops the assessment run that is specified by the ARN of the
      # assessment run.
      #
      # @option params [required, String] :assessment_run_arn
      #   The ARN of the assessment run that you want to stop.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.stop_assessment_run({
      #     assessment_run_arn: "Arn", # required
      #   })
      #
      # @overload stop_assessment_run(params = {})
      # @param [Hash] params ({})
      def stop_assessment_run(params = {}, options = {})
        req = build_request(:stop_assessment_run, params)
        req.send_request(options)
      end

      # Enables the process of sending Amazon Simple Notification Service
      # (SNS) notifications about a specified event to a specified SNS topic.
      #
      # @option params [required, String] :resource_arn
      #   The ARN of the assessment template that is used during the event for
      #   which you want to receive SNS notifications.
      #
      # @option params [required, String] :event
      #   The event for which you want to receive SNS notifications.
      #
      # @option params [required, String] :topic_arn
      #   The ARN of the SNS topic to which the SNS notifications are sent.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.subscribe_to_event({
      #     resource_arn: "Arn", # required
      #     event: "ASSESSMENT_RUN_STARTED", # required, accepts ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER
      #     topic_arn: "Arn", # required
      #   })
      #
      # @overload subscribe_to_event(params = {})
      # @param [Hash] params ({})
      def subscribe_to_event(params = {}, options = {})
        req = build_request(:subscribe_to_event, params)
        req.send_request(options)
      end

      # Disables the process of sending Amazon Simple Notification Service
      # (SNS) notifications about a specified event to a specified SNS topic.
      #
      # @option params [required, String] :resource_arn
      #   The ARN of the assessment template that is used during the event for
      #   which you want to stop receiving SNS notifications.
      #
      # @option params [required, String] :event
      #   The event for which you want to stop receiving SNS notifications.
      #
      # @option params [required, String] :topic_arn
      #   The ARN of the SNS topic to which SNS notifications are sent.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.unsubscribe_from_event({
      #     resource_arn: "Arn", # required
      #     event: "ASSESSMENT_RUN_STARTED", # required, accepts ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, FINDING_REPORTED, OTHER
      #     topic_arn: "Arn", # required
      #   })
      #
      # @overload unsubscribe_from_event(params = {})
      # @param [Hash] params ({})
      def unsubscribe_from_event(params = {}, options = {})
        req = build_request(:unsubscribe_from_event, params)
        req.send_request(options)
      end

      # Updates the assessment target that is specified by the ARN of the
      # assessment target.
      #
      # @option params [required, String] :assessment_target_arn
      #   The ARN of the assessment target that you want to update.
      #
      # @option params [required, String] :assessment_target_name
      #   The name of the assessment target that you want to update.
      #
      # @option params [required, String] :resource_group_arn
      #   The ARN of the resource group that is used to specify the new resource
      #   group to associate with the assessment target.
      #
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #
      #   resp = client.update_assessment_target({
      #     assessment_target_arn: "Arn", # required
      #     assessment_target_name: "AssessmentTargetName", # required
      #     resource_group_arn: "Arn", # required
      #   })
      #
      # @overload update_assessment_target(params = {})
      # @param [Hash] params ({})
      def update_assessment_target(params = {}, options = {})
        req = build_request(:update_assessment_target, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param params ({})
      # @api private
      def build_request(operation_name, params = {})
        handlers = @handlers.for(operation_name)
        context = Seahorse::Client::RequestContext.new(
          operation_name: operation_name,
          operation: config.api.operation(operation_name),
          client: self,
          params: params,
          config: config)
        context[:gem_name] = 'aws-sdk-inspector'
        context[:gem_version] = '1.0.0.rc1'
        Seahorse::Client::Request.new(handlers, context)
      end

      # @api private
      # @deprecated
      def waiter_names
        []
      end

      class << self

        # @api private
        attr_reader :identifier

        # @api private
        def errors_module
          Errors
        end

      end
    end
  end
end