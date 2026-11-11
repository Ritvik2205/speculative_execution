.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
test dl, al
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
xor rax, -2035087432
test dil, 18
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
sub al, 10
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, cl
add al, -106
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
add rax, 324518812
xor sil, 1
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
cmovno edi, edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
