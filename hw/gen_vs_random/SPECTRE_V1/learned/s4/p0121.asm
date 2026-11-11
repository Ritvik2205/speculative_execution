.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lea dx, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
btr eax, 253
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
jnl .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
lea di, qword ptr [rsi + rax]
xor eax, 1034314125
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
xor al, -41
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
