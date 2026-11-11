.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
test dil, 18
test dl, al
xor rax, 1636804787
sub al, 10
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 110
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 48
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmovno edi, edx
xor sil, 1
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
