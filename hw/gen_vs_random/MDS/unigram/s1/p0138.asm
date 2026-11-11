.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
btc si, 43
cmovo rax, rax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
cmovl rdx, rsi
xor di, -83
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor al, -26
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
test rbx, 53
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
or al, dil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and dl, 120 # instrumentation
cmovnz ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
