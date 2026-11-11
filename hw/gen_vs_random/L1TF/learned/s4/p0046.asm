.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
xor al, al
jmp .bb_0.1
.bb_0.1:
xor al, 38
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
inc bl
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
