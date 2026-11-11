.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
test bx, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or dil, al
or dil, bl
xor bl, 67
xor cl, -13
or bx, 3
or al, dl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rdx, 43
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rdx
xor dil, 8
or bl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
