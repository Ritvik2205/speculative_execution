.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and al, -55
and al, 14
or cl, dl
and eax, 454700988
bt si, 23
xor dl, al
and dl, cl
or bl, sil
test dil, -51
test al, -7
and bl, bl
xor ax, -12492
and cl, sil
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
