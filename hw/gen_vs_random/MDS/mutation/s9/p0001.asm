.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
or cl, 7
and bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and sil, 74
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
test dl, 9
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
btc ax, dx
bt rsi, 4
xor al, 8
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
or sil, -78
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
test ax, 6779
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
