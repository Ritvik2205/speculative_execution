.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc rcx
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub sil, dil
sbb dl, bl
add cl, cl
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, al
sub cl, bl
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
