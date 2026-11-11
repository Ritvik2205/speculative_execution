.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
sbb al, bl
btc cx, 46
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
mov dil, bl
and bl, -121
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
sbb al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
