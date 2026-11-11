.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
btc si, 43
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
or di, 15
jmp .bb_0.3
.bb_0.3:
lea rdi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test eax, 1287331633
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
