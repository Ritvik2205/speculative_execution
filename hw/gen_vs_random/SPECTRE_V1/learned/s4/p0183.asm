.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -74
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and cl, 86
or al, 100
movzx edi, bx
mov sil, dl
and dl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
