.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
cmp ebx, 7
or rbx, 18
bt rcx, rax
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 79
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
sub al, 9
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
