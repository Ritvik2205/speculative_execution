.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and al, 33
lea edx, qword ptr [rdi]
or bl, 83
lea di, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
dec dil
cmp dil, -78
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sbb al, bl
add cl, -127
bt eax, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
