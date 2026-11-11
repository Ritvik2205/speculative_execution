.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -885380838
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rax, -731384280
xor ecx, 8
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dl, al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and cl, cl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 76
xor rbx, 89
test dil, -51
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
