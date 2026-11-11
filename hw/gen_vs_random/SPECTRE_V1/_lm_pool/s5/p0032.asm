.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
sub sil, bl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -127
sbb ebx, 28
lea ax, qword ptr [rdx + rcx]
or al, cl
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, -23
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
btc edx, 169
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
