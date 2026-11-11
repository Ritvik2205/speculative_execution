.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or al, dl
btr dx, ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or rdx, -109
xor cl, dl
cmovbe edx, ebx
and sil, dl
or cl, sil
xor ax, -12492
xor dil, -70
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
