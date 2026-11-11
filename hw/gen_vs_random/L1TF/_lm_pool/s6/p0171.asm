.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
xor cl, 89
xor ecx, 57
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
bt edx, esi
cmp ax, 24210
sbb al, bl
lea si, qword ptr [rcx + rsi + 58]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
cmp al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
