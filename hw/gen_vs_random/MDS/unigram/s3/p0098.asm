.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe edx, edx
cmovnb bx, ax
and dl, 84 # instrumentation
cmovl rbx, rax
cmovnbe edx, ecx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and si, -121
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
or dl, sil
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and ebx, esi
and bl, dil
and dl, -26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
