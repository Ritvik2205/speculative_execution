.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 73
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and cl, dil
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
