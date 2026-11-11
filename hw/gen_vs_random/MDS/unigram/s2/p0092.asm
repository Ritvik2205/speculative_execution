.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edi, edi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 11
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
bt esi, edx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and esi, 72
or al, al
bt bx, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
xor cl, 15
cmovnp di, cx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
