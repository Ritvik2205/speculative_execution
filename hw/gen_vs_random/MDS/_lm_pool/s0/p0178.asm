.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
or bl, al
xor cl, 15
test bl, -14
and al, al
or dil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor cl, 55
test bl, dil
xor dl, 8
xor sil, 110
or al, 30
cmovnp rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
