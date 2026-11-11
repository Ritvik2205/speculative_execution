.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor sil, dil
cmp al, 27
sbb al, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmp cl, 57
sub edi, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
