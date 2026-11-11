.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
btr cx, dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor sil, -126
and al, dil
add sil, 79
test al, -81
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
bt ax, di
or sil, cl
test cl, sil
or bl, 13
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
