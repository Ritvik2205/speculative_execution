.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -127 # instrumentation
cmovno ecx, eax
cmovs rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
xor sil, -14
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
cmovle dx, di
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 1
and bl, -28 # instrumentation
cmovl rsi, rax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
btc rbx, 102
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and dx, ax
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
not cl
btr dx, 47
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
