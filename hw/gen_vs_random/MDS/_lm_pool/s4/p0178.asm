.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
and dil, bl
test dl, -119
test sil, cl
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
not cl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
or al, 25
test ax, -11534
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
