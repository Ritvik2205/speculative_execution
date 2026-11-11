.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
xor dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
or al, -48
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and al, 33 # instrumentation
cmovnle edx, ebx
jmp .bb_0.1
.bb_0.1:
cmovnle edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
btc rdi, rcx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
