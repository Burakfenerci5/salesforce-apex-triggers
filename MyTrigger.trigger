trigger MyTrigger on Account (after insert) {
    List<Task> tasks = new List<Task>();
    for (Account a : Trigger.new) {
        Task t = new Task();
        t.WhatId = a.Id;
        t.Subject = 'Follow up on new account';
        tasks.add(t);
    }
    insert tasks;
}