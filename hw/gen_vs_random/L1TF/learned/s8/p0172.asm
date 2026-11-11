.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
xchg edx, ebx
and rax, 1994547909
add dil, dl
sbb dil, dl
and dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
sub dx, ax
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
sub al, -3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
