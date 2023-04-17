require '../practice-for-ch-ruby-poly-tree-node-long-practice-main/lib/tree_node.rb'
require 'byebug'

class KnightPathFinder

    attr_reader :root_node
    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        # self.build_move_tree
    end

    def self.valid_moves(pos)
        r, c = pos
        possible_pos = []
        #generate 8 possible positions 
        possible_pos << [r+2,c+1]
        possible_pos << [r+2,c-1]
        possible_pos << [r-2,c+1]
        possible_pos << [r-2,c-1]
        possible_pos << [r+1,c+2]
        possible_pos << [r-1,c-2]
        possible_pos << [r+1,c-2]
        possible_pos << [r-1,c+2]
        #check which positions are valid
        valids = possible_pos.select{|indices|  indices[0].between?(0,7) && indices[1].between?(0,7)}
        valids
    end

    def build_move_tree(node)

    end

end

if $PROGRAM_NAME == __FILE__
    p kpf = KnightPathFinder.new([0,0])

    p KnightPathFinder.valid_moves([7,7])
end
