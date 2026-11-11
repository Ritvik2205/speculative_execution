.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rbx + rsi + 58]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
lea rdi, qword ptr [rsi]
xor cl, bl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
test al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
