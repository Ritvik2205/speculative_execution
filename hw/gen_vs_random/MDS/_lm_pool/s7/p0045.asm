.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test sil, 41
bt bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test sil, 17
jmp .bb_0.1
.bb_0.1:
or rax, -141551502
or al, -22
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or al, -78
or al, bl
lea rsi, qword ptr [rax]
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
