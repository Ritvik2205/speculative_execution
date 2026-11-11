.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
test dl, 27
or sil, cl
test rax, -648054011
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rcx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 99
and dil, dl
or dil, -71
or al, 54
test sil, dl
test bl, dl
sub sil, 15
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
btr cx, dx
xor al, cl
cmovns rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
