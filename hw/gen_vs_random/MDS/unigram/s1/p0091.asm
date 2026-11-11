.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
cmovp rdx, rsi
test cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
or edx, -78
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and dl, -59 # instrumentation
cmovbe ax, cx
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
