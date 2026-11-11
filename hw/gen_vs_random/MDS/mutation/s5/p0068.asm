.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 89
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
or cl, 39
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
xor al, -26
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
or sil, -49
btc ax, dx
test ax, -11534
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
or al, bl
bt rsi, 238
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
