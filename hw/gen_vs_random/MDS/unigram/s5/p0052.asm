.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 52
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
cmovz rax, rbx
or al, -17
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
xor cl, sil
cmovns ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
cmovl eax, edx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and al, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and al, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
cmovnle rbx, rcx
or ax, dx
cmovno rdi, rdx
btc eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
