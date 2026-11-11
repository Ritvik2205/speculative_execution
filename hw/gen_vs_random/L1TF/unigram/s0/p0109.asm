.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 99
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
add dl, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, dil
and rdx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdx]
add cl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or di, 19
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
inc ecx
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
add bl, 37 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 55
not dil
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
