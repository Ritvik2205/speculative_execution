.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 48
bts rdi, 130
jmp .bb_0.1
.bb_0.1:
or al, bl
and sil, al
or al, 25
or al, sil
test edi, -1252846009
and bl, dil
and sil, al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
test rcx, -613256812
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
