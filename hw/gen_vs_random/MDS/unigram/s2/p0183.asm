.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp di, bx
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
not dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and cl, -101
and si, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 58
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
