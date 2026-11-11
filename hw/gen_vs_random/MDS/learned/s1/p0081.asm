.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
xor cl, sil
or dl, -97
xor bl, dl
or al, -22
bt ecx, ebx
and bl, 68
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
test al, sil
or dil, 12
and dl, -73
test rsi, 62
and sil, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
or dx, 125
and ax, 27170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
