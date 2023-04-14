class PolyTreeNode
    
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
    
    def parent=(other_node)
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
    
    def add_child(child_node)
        child_node.parent = self 
    end
    
    def remove_child(child_node)
        child_node.parent = nil
    end


    # def inspect
    #     { 'value' => @value, 'parent_value' => @parent.value }.inspect
    # end
    #################################################
    #Searchable
    
    #depth --- REcursive
    def dfs(target_value)
        return self if self == target_value

        
    end
    
    #breadth
    def bfs(target_value) # %[f a g x]
        queue = [self]

        loop do
            first = queue.shift
            
            return first if first == target_value
            queue + self.children
            queue.shift
            return nil if queue.empty?

        end


    end

end



# node1 = PolyTreeNode.new(1)
# node2 = PolyTreeNode.new(2)
# node3 = PolyTreeNode.new(3)
# node2.parent = node1
# node2.parent = node3
# p node1
# node2.parent = node3