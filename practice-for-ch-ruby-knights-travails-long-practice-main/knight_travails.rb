require './tree_node.rb'
require 'byebug'

class KnightPathFinder

    attr_reader :root_node
    def initialize(start_pos)
        # @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)

        self.build_move_tree
    end

    def self.valid_moves(pos)
        r, c = pos
        posible_pos = []
        [r+1, r+2, r-1, r-2].each do |n_row|
            [c+1, c+2, c-1, c-2].each do |n_col|
                
            end
        end
    end

    def build_move_tree(node)

    end

end

if $PROGRAM_NAME == __FILE__
    p kpf = KnightPathFinder([])

    p kpf.
end
