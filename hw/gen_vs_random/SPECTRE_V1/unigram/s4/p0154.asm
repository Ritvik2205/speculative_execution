.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdx + rbx + 56]
and rbx, 98
add bx, -65
setp bl
cmp dl, dl
movzx dx, cl
movzx edx, cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, dil
add dl, 47
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 47
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and cl, 86
or ebx, -124
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
test rdi, -1846965753
movzx bx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
