.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and si, 38
and dl, 73
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
cmp al, sil
and cl, 60
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
not esi
and rax, 1994547909
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
