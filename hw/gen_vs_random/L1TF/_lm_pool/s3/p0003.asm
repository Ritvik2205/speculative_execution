.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
or bl, -88
and ax, 37
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
sbb al, -14
cmovnp dx, si
sbb cl, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, 104 # instrumentation
sbb rbx, 61
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 27
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
