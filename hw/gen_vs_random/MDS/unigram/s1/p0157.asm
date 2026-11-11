.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -872608366
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 26
or edx, 98
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and cl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
xor al, -28
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
and dl, -107 # instrumentation
cmovz rdi, rcx
bt cx, si
and ax, 30884
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
bts rsi, rsi
cmovnl si, cx
xor si, di
and rdi, 77
or dl, sil
cmovs ecx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
