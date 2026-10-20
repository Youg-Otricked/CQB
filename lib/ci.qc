namespace Exported {
    #include<Vector, std>
}
namespace CQB {
    namespace CI {
        struct Step {
            string name;
            Vector::Vec<string> command;
        };
        struct Task {
            string name;
            Vector::Vec<Step> steps;
            Vector::Vec<Task*> next;
            bool ignoreFailure;
        };
        class Job {
            private Vector::Vec<Task*> tasks;
            private Task *entry;
            private Task *current;
            Job(string name, Vector::Vec<Step> steps) {
                Task *task = `malloc(sizeof Task);
                *task = Task{name, steps};
                task->next = Vector::Vec<Task*>();
                this->tasks.push(task);
                this->entry = task;
                this->current = task;
            }
            Task* addTask(string name, Vector::Vec<Step> steps, bool advance = false) {
                Task *task = `malloc(sizeof Task);
                *task = Task{name, steps};
                this->tasks.push(task);
                this->current->next.push(task);
                if (advance) this->current = task;
                return task;
            }
            Job* focus(Task* task) {
                this->current = task;
                return this;
            }
            Job* link(Task* parent, Task* child) {
                parent->next.push(child);
                return this;
            }
            Task* getGraphRoot() {
                return this->entry;
            }
        };
    }
}
