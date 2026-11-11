.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
xor dil, -42
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sbb cl, sil
btc ax, bx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
test cl, 87
lea si, qword ptr [rdx + rsi + 21492]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
