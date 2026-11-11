.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
cmp rax, -1877933118
add al, -65
xchg rbx, rcx
sbb al, 33
xor dil, al
or eax, -1161451853
test cl, -24
sbb sil, -78
lea esi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
