.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
sbb cl, -11
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
setle dil
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
add al, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
btc rcx, 2
bswap rdi
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
xor dx, 32
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
