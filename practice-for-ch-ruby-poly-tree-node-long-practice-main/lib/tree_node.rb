class PolyTreeNode
    
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
    
    def parent=(other_node)
        @parent = other_node
        
        other_node.parent = 

        if @parent.nil?

        elsif !other_node.children.include?(self)
            other_node.children << self
        end

    end
    
    def add_child
        
    end
    
    def remove_child
        
    end
    
    
end