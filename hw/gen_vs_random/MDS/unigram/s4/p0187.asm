.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
not ax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
not si
cmovnb dx, di
or al, -48
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
cmovz dx, cx
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 9
cmovno eax, ebx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovp eax, eax
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
or ebx, ecx
or sil, dil
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
