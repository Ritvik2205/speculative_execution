.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
sub al, -66
test dl, bl
sub dil, al
sbb cl, 105
add bl, 70
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
sbb dl, bl
sub cl, sil
xchg eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
