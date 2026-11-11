.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
cmovb eax, ecx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 73
or bx, 62
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
or eax, edi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
cmovs rsi, rbx
or dil, bl
or al, -48
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
btr rdi, 90
xor sil, 13
bts rax, 149
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
xor edx, 98
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
