.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
cmovnb cx, ax
bts edx, ecx
cmovl rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and dl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
or cl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
xor ecx, 96
and eax, -2116875023
or rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
