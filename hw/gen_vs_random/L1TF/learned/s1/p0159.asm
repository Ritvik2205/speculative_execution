.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
add cl, -20
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
