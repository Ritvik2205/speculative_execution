.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
sbb dil, -93
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
sbb dil, sil
lea rsi, qword ptr [rdi + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
add bl, 70
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
xor cl, bl
neg rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
