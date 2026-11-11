.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
sub rcx, 13
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
mov dl, 99
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdi + rsi]
lea edi, qword ptr [rcx + rcx]
sbb cx, 29
sbb cl, 105
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 10
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
