locals {
  users = {
    "user1" = {
      username = "jerome"
      groups   = ["group1", "group2"]
    },
    "user2" = {
      username = "marc"
      groups   = ["group2", "group3"]
    }
  }
}

#creating iam user groups 
resource "aws_iam_group" "this" {
  for_each = toset(flatten([for user in local.users : user.groups]))

  name = each.key
}

# creating iam users
resource "aws_iam_user" "this" {
  for_each = local.users

  name = each.value.username
}


#binding users to the groups

resource "aws_iam_user_group_membership" "this" {
  for_each = local.users

  user = aws_iam_user.this[each.key].name
  groups = [for group in each.value.groups : aws_iam_group.this[group].name]
}