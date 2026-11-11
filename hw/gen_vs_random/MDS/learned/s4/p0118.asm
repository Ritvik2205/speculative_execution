.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
test cl, 0
btr di, bx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
or al, -24
or al, 25
or al, bl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and esi, 48
test al, cl
xor ax, -4010
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
