.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
or dl, cl
setb sil
not edx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
cmp cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
cmp cl, -89
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
