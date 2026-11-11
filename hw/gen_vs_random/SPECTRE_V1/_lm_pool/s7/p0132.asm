.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 40
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 84
sub dl, -48
add rax, -704585563
or dl, sil
and dil, -93
cmp dil, -58
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
or al, cl
setnle bl
lea bx, qword ptr [rcx]
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
