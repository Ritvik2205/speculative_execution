.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
cmp esi, 82
or bl, al
xchg rax, rdx
sub cl, bl
mov bl, dl
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
