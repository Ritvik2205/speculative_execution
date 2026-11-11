.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
or rax, 1808026647
and dl, -49
and dl, bl
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle edi, esi
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
add dl, 125
and dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
