.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -98
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
mov rax, 82
setb al
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
movzx edx, al
cmovno ax, bx
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 78
adc cx, -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
