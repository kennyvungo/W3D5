class PolyTreeNode
    
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
    
    def parent=(other_node)
        # other_node.children.delete(self)
        if other_node == nil
            self.parent.children.delete(self)
            @parent = other_node
        elsif @parent.nil?
            @parent = other_node
            other_node.children << self

        else 
            self.parent.children.delete(self)
            @parent = other_node
            other_node.children << self
        end

    end
    
    def add_child
        
    end
    
    def remove_child
        
    end
    
end

# node1 = PolyTreeNode.new(1)
# node2 = PolyTreeNode.new(2)
# node3 = PolyTreeNode.new(3)
# node2.parent = node1
# node2.parent = node3
# p node1
# node2.parent = node3