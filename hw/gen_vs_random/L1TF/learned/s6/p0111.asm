.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 17
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
or al, -57
btc ax, bx
sub rsi, 75
btc cx, bx
btc ax, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
test sil, dil
add bx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
