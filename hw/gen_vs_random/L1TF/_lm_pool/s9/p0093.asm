.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
add dil, sil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
test sil, 29
adc al, dl
cmp dil, 63
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
