.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or dil, -71
xor al, cl
and cx, -8
and dil, 125
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
