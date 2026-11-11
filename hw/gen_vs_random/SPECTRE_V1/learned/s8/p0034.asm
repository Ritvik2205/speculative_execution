.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, bx
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
sub dl, cl
and sil, -55
sbb dil, dil
jmp .bb_0.1
.bb_0.1:
add bl, -95
or dl, 41
xor rbx, -34
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
