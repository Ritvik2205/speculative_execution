.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rax, rdx
bts rdi, 130
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
bts esi, 82
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
cmovz ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and bl, 38 # instrumentation
cmovno rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
cmovo edx, eax
and bl, 109 # instrumentation
cmovs si, dx
btc cx, di
btr edx, edx
test al, dil
and al, 42 # instrumentation
cmovz ebx, edx
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
