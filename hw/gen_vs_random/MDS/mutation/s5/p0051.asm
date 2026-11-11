.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and eax, -85386306
cmovle rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
btr ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
test dx, 16353
and al, 67 # instrumentation
cmovl rbx, rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
cmovl esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
