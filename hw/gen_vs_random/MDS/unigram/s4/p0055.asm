.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
btc cx, dx
test cx, 401
cmovo rax, rdx
or dx, si
test dl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
or sil, -49
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and dl, -73
bt bx, si
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and bl, 47 # instrumentation
cmovnp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
xor ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
