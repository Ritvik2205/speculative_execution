.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
bts dx, 50
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
cmovl esi, ebx
and al, 67 # instrumentation
cmovl rbx, rsi
and eax, 366961170
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
test dx, 16353
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
btr ebx, ebx
cmovle rcx, rsi
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
