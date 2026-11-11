.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
cmovle ax, dx
test dil, -116
mov al, dl
add cl, -127
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
btc ebx, 139
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, bl
lea rsi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
cmp al, 77
jns .bb_0.2
jmp .exit_0
.bb_0.2:
xor cx, 25
and sil, 11
test eax, 88788211
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
