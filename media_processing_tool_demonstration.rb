class MediaProcessingToolDemonstration < ActiveRecord::Base
  include Action

  PROMPT_OVERRIDE = 'prompt_override'
  DEFAULT_PROMPT  = 'Hello World'
  DEFAULT_TEMPO   = 2
  PROGRESS_FILE   = "#{BASE_DIR}/hello_world_PROGRESS"
  TEMPO           = 'tempo'
  MESSAGE         = 'message'

  # Input Parameters

  VAR_EXECUTION_NODE    = 'Execution node'
  VAR_SOURCE_FILE_PATH  = 'File path'

  VAR_OPERATION = 'operation'
  OPERATION_LIST = [
    'Analyze_File',
    'Process_XML_File',
  ]


  def display_name
    'Media Processing Tool'
  end

  # Revision history
  # => 0.0.1 initial release
  def self.version
    return 0, 0, 1
  end

  def description
    'This action plug-in can be used to interact with the XPlatform Consulting\'s Media Processing Tool.'
  end

  # return a hash of required gems.{<gem_name>=><gem_release>}
  #  for example [['net-scp','1.0.2'], ['aspera_ruby'], ['logging','1.4.3+']]
  def self.dependencies
    [] #nothing required at this point.
  end

  def category
    [ CATEGORY_INTEGRATION ]
  end

  def inputs_spec
    @required_inputs = {}
    @optional_inputs = { '' => TYPE_STRING }

    return @required_inputs, @optional_inputs
  end

  def outputs_spec
    return { '' => TYPE_STRING }
  end

  def execute

  end

  def execution_node_get
    execution_node.blank? ? RemoteNode.find_by_name( @inputs[VAR_EXECUTION_NODE] ) : execution_node
  end


end
