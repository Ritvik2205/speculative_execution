.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, dx
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 9
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 12
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
add dl, 56 # instrumentation
cmovns eax, edx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 68
add bl, 7 # instrumentation
cmovnl ebx, esi
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 30
test sil, -101
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
