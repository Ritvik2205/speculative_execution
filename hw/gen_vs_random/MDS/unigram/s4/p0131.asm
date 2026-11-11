.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
bt edi, ebx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 45
cmovnp rbx, rax
cmovo eax, edi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 5
and dl, -7
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 39
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
or dx, 7
and dl, -26 # instrumentation
cmovnp rbx, rdx
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
cmovle rdx, rsi
cmovnb dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
