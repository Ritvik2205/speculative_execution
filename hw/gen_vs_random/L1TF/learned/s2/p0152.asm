.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 46
jmp .bb_0.1
.bb_0.1:
test al, sil
and dil, bl
btc dx, ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, -42
jmp .bb_0.2
.bb_0.2:
add dl, 42 # instrumentation
lea ebx, qword ptr [rdx + rbx]
lea si, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
