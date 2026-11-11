.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 81
lea di, qword ptr [rsi + rdx]
inc rdx
mov bl, dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
btc ax, dx
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
