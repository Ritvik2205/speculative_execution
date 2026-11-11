.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
inc dil
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 9
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 23
movzx ebx, sil
xchg bx, dx
setp dil
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
sbb di, 54
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
bswap rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
