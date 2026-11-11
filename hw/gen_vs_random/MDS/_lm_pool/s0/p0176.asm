.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 124
xor cl, 98
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and sil, sil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or rax, 302048971
xor al, 55
and cl, -111
xor cl, al
jmp .bb_0.1
.bb_0.1:
test bl, sil
xor bx, 11
xor al, sil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
