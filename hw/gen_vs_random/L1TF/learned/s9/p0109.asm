.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
test dil, -126
inc rax
mov dil, bl
or ax, -18131
xor cl, bl
btc edx, 21
add bl, 68
add al, al
jmp .bb_0.1
.bb_0.1:
test al, dl
or bl, sil
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
