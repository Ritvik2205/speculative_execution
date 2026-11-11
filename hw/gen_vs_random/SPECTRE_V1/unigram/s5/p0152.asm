.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -114 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
xor sil, dil
mul dil
adc ax, ax
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 39
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 17
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add cl, -121 # instrumentation
setno cl
test edx, edi
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
sbb ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
