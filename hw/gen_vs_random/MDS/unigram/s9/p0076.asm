.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 62
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
cmovo rax, rax
test rbx, 28
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
cmovno ecx, eax
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and bl, 68
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and sil, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
bts ebx, edi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
or cl, 39
test rdi, 81
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
