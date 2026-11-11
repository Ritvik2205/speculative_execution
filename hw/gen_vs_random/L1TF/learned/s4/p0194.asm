.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
setbe cl
jmp .bb_0.1
.bb_0.1:
bt si, dx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 51
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
dec rbx
cmovnle rsi, rsi
lea dx, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
