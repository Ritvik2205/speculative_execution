.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 10
xor rax, 1636804787
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
test dil, -107
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
add bl, -127 # instrumentation
movzx ebx, cl
test dl, al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, 1
add al, -106
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
cmovno edi, edx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
cmp al, cl
add rax, 1503210561
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
