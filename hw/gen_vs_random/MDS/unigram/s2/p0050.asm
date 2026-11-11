.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
cmovnl rcx, rcx
bts rdx, 255
cmovnb eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
cmovp di, di
xor ecx, 29
cmovnle eax, ebx
xor bx, ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 62
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
and sil, 122 # instrumentation
cmovnb rsi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or edx, edi
and dl, -18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
cmovp rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
