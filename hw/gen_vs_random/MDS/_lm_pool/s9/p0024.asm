.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
or esi, ebx
test al, 127
or al, sil
xor bx, 30
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or rsi, 58
jmp .bb_0.1
.bb_0.1:
xor bl, 67
xor rax, -91
bt di, bx
or eax, -927349615
and bl, dil
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
