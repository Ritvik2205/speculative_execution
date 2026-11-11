.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 10
sub bl, 15
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
not cl
jmp .bb_0.2
.bb_0.2:
test al, -104
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor cl, 89
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rcx, 45
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
