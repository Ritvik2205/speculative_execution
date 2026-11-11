.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
test dl, al
xor rax, -2035087432
test dil, 18
sub al, 10
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
add bl, -127 # instrumentation
movzx ebx, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add rax, 1503210561
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
add al, -106
cmovno edi, edx
cmp al, cl
xor sil, 1
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
