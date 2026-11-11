.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or al, bl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
cmp di, -78
add bx, 14
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
bt ecx, edi
or rax, 1808026647
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
lea rsi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
