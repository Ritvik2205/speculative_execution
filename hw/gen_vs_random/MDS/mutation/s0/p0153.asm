.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
or cl, 30
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and sil, 74
jmp .bb_0.1
.bb_0.1:
test dl, 9
or sil, -49
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
or al, bl
test ax, 6113
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
btc ax, dx
xor al, 34
bt rsi, 238
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
