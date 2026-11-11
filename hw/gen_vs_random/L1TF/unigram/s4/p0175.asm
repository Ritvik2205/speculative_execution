.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
test dl, -37
mul al
xor bl, 38
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
imul si, ax
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdi
sbb ax, -9869
imul ax, dx
cmp bx, -21
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
adc rbx, 44
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
btc dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
