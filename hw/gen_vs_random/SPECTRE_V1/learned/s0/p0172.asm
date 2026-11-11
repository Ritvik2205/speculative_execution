.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
sbb cl, dil
xor eax, -1721938664
adc ax, -614
sub al, dil
xchg al, cl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dil, cl
xor ax, 913
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb eax, 1392087754
lea ecx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
