.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
xor bl, -61
or al, sil
xor sil, cl
or dl, -97
xor al, -26
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
bt cx, dx
xor dil, dl
xor ebx, 80
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and sil, bl
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
