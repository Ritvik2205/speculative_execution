.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
setz dl
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -13
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rax, qword ptr [rdi + rdx + 4]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test dl, 113
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and sil, -55
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
