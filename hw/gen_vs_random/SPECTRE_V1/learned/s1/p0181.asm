.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
sbb cl, dil
lea di, qword ptr [rdx]
and rax, -1128038253
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, -21
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, sil
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
