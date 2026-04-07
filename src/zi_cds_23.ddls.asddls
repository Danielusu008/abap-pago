@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy ZI_CDS_23
  //with parameters
  as parent child hierarchy(
    source ZI_CDS_22
    child to parent association _Mangaer
    start where
      Mangaer is initial
    siblings order by
      Employee
    multiple parents allowed
    orphans ignore
    cycles breakup cache on
  )
{
  key Employee,
      Mangaer,
      Name,
      $node.parent_id             as ParentId,
      $node.node_id               as NodeId,
      $node.hierarchy_is_cycle    as HIsCycle,
      $node.hierarchy_is_orphan   as HIsOrphan,
      $node.hierarchy_level       as HLevel,
      $node.hierarchy_parent_rank as HParentRank,
      $node.hierarchy_rank        as HRank,
      $node.hierarchy_tree_size   as HTreeSize
}
