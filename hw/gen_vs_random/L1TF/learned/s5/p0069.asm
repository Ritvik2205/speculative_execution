.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
xor cx, 113
add al, al
and bl, 89
xor rdx, 122
sub al, bl
cmp bx, -21
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
btc bx, di
or dil, cl
test ax, 13879
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
