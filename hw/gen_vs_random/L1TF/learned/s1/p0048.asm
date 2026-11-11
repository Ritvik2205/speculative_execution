.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 38
or al, -2
sub cl, dl
jmp .bb_0.1
.bb_0.1:
sbb ax, -4845
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdx + rax + 33]
add sil, -61
test rdi, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
