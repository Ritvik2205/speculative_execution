.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 30
and bl, al
sub bl, al
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
