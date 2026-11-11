.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
add dil, dl
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
sub al, cl
and al, dil
btr rax, rdx
lea cx, qword ptr [rdi + rax]
cmp rbx, 81
cmp al, 53
add cl, -127
add sil, sil
xor cl, sil
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
