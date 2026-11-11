.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
jmp .bb_0.1
.bb_0.1:
and ax, 339
test sil, -96
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test al, 22
or al, 30
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
jmp .bb_0.2
.bb_0.2:
test al, bl
and ax, 339
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
xor dl, cl
and bx, 49
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
