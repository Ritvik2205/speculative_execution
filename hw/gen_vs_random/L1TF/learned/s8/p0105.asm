.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 73
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add al, -102
test edx, -541774418
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
add dil, dl
cmp al, 56
and dil, dl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
