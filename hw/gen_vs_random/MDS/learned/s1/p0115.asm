.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
not sil
xor ebx, 77
or cl, -77
bts esi, 82
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or sil, -78
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rbx
test dil, -51
xor dl, 8
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
