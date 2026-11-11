.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
xor al, 122
xor ax, -1005
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
xor ax, -6793
not dil
and ax, 339
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor bl, 67
and sil, -56
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test cx, 401
and al, sil
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
