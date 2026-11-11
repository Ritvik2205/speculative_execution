.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
lea rax, qword ptr [rdx + rsi + 9]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
add dl, -1
btc ax, di
or rdx, 11
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
