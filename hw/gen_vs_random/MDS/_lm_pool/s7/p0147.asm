.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
test cl, al
test ecx, -1843375753
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor al, dl
or al, -22
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or rax, -141551502
and dil, -62
xor al, 9
or dil, -76
xor rbx, 89
or bl, dil
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
