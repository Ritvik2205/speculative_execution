.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -2035087432
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
test dl, al
add bl, -127 # instrumentation
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
sub al, 10
test dil, 18
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
add al, 110
cmovno edi, edx
xor sil, 1
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
add rax, 324518812
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
