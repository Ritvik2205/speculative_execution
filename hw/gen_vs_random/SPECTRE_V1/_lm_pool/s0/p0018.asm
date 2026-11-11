.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
cmp cl, bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, sil
and rbx, 50
xor cl, cl
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
or esi, -74
add eax, -1174744897
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
