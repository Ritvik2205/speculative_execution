.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
sub sil, -18
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and cl, dil
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
mov dil, bl
sub al, cl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
