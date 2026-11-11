.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
cmovle rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and eax, -574348013
btr ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and al, 67 # instrumentation
cmovl rbx, rsi
bts dx, 50
cmovl esi, ebx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
