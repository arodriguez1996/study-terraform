resource "local_file" "tasks" {
    count = 3
    content = "find a good job"
    filename = "tasks-${random_string.sufix[count.index].id}.txt"
}