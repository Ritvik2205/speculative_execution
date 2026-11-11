.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and edx, -44
or al, 30
or cl, sil
and rax, -1931765367
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
cmovle bx, si
jmp .bb_0.1
.bb_0.1:
test dil, 46
xor dil, -124
test bl, sil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
