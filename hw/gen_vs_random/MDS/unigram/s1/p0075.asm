.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and dx, 90
cmovb si, si
cmovnle rdi, rsi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 11
cmovnl ecx, eax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 18
jmp .bb_0.1
.bb_0.1:
cmovz ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
or cl, dl
cmovs ebx, edi
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 93
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
cmovnb bx, di
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
