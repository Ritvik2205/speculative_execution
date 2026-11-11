.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
test rax, -1576813424
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
or dil, -113
lea di, qword ptr [rdx + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
test rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 85
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
lea rdi, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
