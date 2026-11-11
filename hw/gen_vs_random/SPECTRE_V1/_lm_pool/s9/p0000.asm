.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 46
setb cl
and eax, 933895314
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb edi, 63
xchg al, dl
lea ax, qword ptr [rdx]
mov al, dil
jmp .bb_0.3
.bb_0.3:
setbe bl
jmp .bb_0.4
.bb_0.4:
xor dx, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
