.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 1
setz cl
sub sil, -99
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dl, -37
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
btc cx, dx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 42
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
