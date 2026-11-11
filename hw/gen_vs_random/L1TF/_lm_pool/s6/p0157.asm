.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sub sil, -99
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and sil, 37
add dl, cl
add ax, -10746
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
