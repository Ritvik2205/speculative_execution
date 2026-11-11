.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and al, 38 # instrumentation
cmovbe edx, eax
and bl, 120 # instrumentation
cmovnle eax, eax
xor edi, edi
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
test sil, -96
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
jmp .bb_0.1
.bb_0.1:
cmovb rdi, rsi
btr si, di
test dil, -80
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
cmovo bx, ax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
test rdx, 79
cmovb ax, ax
and bl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
