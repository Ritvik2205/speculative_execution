.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
btr ax, bx
or cl, sil
or ax, -11837
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and dx, 3
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
