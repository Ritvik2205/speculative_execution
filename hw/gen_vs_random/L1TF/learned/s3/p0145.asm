.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
xor rbx, 91
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rax + rbx + 27]
jmp .bb_0.2
.bb_0.2:
btc ecx, esi
and dl, -86
jmp .bb_0.3
.bb_0.3:
add al, 117
xor dl, bl
xor al, bl
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
