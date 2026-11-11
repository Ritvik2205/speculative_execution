.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
lea ax, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, 15
setp dil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 53
jmp .bb_0.2
.bb_0.2:
and rcx, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
