.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp al
xchg al, cl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 29
inc al
xchg ebx, eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
bswap eax
xor rdi, -80
lea di, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
sub dl, -34
add al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
